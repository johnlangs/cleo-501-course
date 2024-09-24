# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

subject1 = Subject.create(name: 'Computer Science and Engineering', code: 'CSCE')
subject2 = Subject.create(name: 'Mathematics', code: 'MATH')
subject3 = Subject.create(name: 'Engineering', code: 'ENGR')

# Create some courses
course1 = Course.create(name: 'Program Design and Concepts', code: '120', credits: 3, subject_id: 1)
course2 = Course.create(name: 'Discrete Structures for Computing', code: '222', credits: 3, subject_id: 1)
course3 = Course.create(name: 'Data Structures and Algorithms', code: '221', credits: 3, subject_id: 1)

course4 = Course.create(name: 'Engineering Mathematics I', code: '151', credits: 3, subject_id: 2)
course5 = Course.create(name: 'Engineering Mathematics II', code: '152', credits: 3, subject_id: 2)

course6 = Course.create(name: 'Engineering Lab I - Computation', code: '102', credits: 2, subject_id: 3)

# Create Prereqs
prereq1 = CoursePrerequisite.create(course: course1, prerequisite: course6)

prereq2 = CoursePrerequisite.create(course: course3, prerequisite: course1)

prereq3 = CoursePrerequisite.create(course: course5, prerequisite: course4)

# Create Degree Plans
degree_plan1 = DegreePlan.create(name: 'BS in Computer Science')
degree_plan2 = DegreePlan.create(name: 'BS in Computer Engineering')

requirement1 = Requirement.create(degree_plan: degree_plan1, name: 'Engineering Mathematics I')
requirement2 = Requirement.create(degree_plan: degree_plan1, name: 'Engineering Mathematics II')

requirement_course1 = RequirementCourse.create(requirement: requirement1, course: course4)
requirement_course2 = RequirementCourse.create(requirement: requirement2, course: course5)
