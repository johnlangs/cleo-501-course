# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

subject1 = Subject.create(name: 'Computer Science', code: 'CSCE')

# Create some courses
course1 = Course.create(name: 'Intro To Programming I', code: '101', credits: 4, subject_id: 1)
course2 = Course.create(name: 'Intro To Programming II', code: '102', credits: 3, subject_id: 1)

# Create Prereqs
prereq1 = CoursePrerequisite.create(course: course2, prerequisite: course1)
