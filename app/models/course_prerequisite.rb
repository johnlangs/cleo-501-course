class CoursePrerequisite < ApplicationRecord
  belongs_to :course
  belongs_to :prerequisite, class_name: 'Course'
end
