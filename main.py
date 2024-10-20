import re
import requests
import os
from datetime import datetime
import psycopg2
from bs4 import BeautifulSoup
from dataclasses import dataclass

@dataclass
class Course:
    subject: str
    number: int
    title: str
    credits: int 
    description: str

@dataclass
class Subject:
    code: int
    name: str
    link: str

db_url = os.environ.get('DATABASE_URL')
db_user = os.environ.get('DATABASE_USER')
db_password = os.environ.get('DATABASE_PASSWORD')

if not db_url:
    conn = psycopg2.connect(database="cleo_501_course_development", host="localhost", user=db_user, password=db_password, port="5432")
else:
    conn = psycopg2.connect(db_url)

# setup bs4 and base url
url = 'https://catalog.tamu.edu/undergraduate/course-descriptions/'
r = requests.get(url)
soup = BeautifulSoup(r.text, 'html.parser')

# grab all links to individual subject page
div = soup.find('div', id='atozindex')
lis = div.find_all('li')

parsing_failures = 0
# Extract subject links and codes
subjects = []
for li in lis:
    a_tag = li.find('a')
    if a_tag:
        href = a_tag['href']
        text = a_tag.text.strip()
        # Extract subject code from href or text
        # From href, the code is the last part after the last '/', excluding the trailing '/'
        code = href.strip('/').split('/')[-1].upper()

        # Full link
        full_link = 'https://catalog.tamu.edu' + href
        subjects.append(Subject(code=code, name=text, link=full_link))

# scrape courses from each subject page
courses = []
for subject in subjects:
    print(f"Scraping {subject.code} from {subject.link}")

    r = requests.get(subject.link)
    soup = BeautifulSoup(r.text, 'html.parser')

    courses_html = soup.find_all(class_='courseblock')

    subject.name = soup.find('h1', class_='page-title').text.strip()
    subject.name = subject.name.split('-')[1].split('(')[0]
    with conn:
        with conn.cursor() as cur:
            cur.execute("INSERT INTO subjects (name, code, created_at, updated_at) VALUES (%s, %s, %s, %s)", (subject.name, subject.code, datetime.now(), datetime.now()))
    # get id of the subject
    with conn:
        with conn.cursor() as cur:
            cur.execute("SELECT id FROM subjects WHERE code = %s", (subject.code,))
            subject_id = cur.fetchone()
            if cur.rowcount == 0 or not subject_id:
                print(f"Failed to find subject {subject.code}")
                parsing_failures += 1
                continue
            subject_id = subject_id[0]

    for course_html in courses_html:
        h2_tag = course_html.find('h2', class_='courseblocktitle')
        course = Course(subject=subject.code, number=0, title='', credits=0, description='')

        # parse course code and title
        if h2_tag:
            title_text = h2_tag.get_text(strip=True)

            # (Course Subject Course Code) / (Possible cross listing) (Programming Concepts and Abstractions)
            pattern = r'(\w+\s\d+)(?:/(\w+\s\d+))?\s+(.*)'
            match = re.match(pattern, title_text)

            if match:
                first_code, second_code, title = match.groups()

                try:
                    course.number = int(first_code.split()[1])
                except ValueError:
                    print(f"Failed to parse course number: {first_code}")
                    parsing_failures += 1
                    continue

                course.title = title.strip()

            else:
                print(f"Failed to parse title: {title_text}")
                parsing_failures += 1
                continue

        else:
            print(f"Failed to find title {course_html}")
            parsing_failures += 1
            continue


        # Extracts credits from the description
        course.description = course_html.find(class_='courseblockdesc').text.strip()
        if not course.description:
            course.description = "No description available"
            # print(f"Failed to find description {course_html}")
            # continue
        credit_match = re.search(r'Credits\s+(\d+(?: to \d+)?)\.', course.description)
        try:
            course.credits = int(credit_match.group(1).split()[0]) if credit_match else 0
        except ValueError:
            print(f"Failed to parse credits: {course.description}")
            parsing_failures += 1
            continue

        # Create the Course object and append to the list
        with conn:
            with conn.cursor() as cur:
                cur.execute("INSERT INTO courses (name, subject_id, created_at, updated_at, code, credits) VALUES (%s, %s, %s, %s, %s, %s)", (course.title, subject_id, datetime.now(), datetime.now(), course.number, course.credits))

print(parsing_failures, " parsing failures")

conn.close()
