class Course < ApplicationRecord
  belongs_to :subject

  has_many :course_prerequisites, foreign_key: :course_id, dependent: :destroy
  has_many :prerequisites, through: :course_prerequisites, source: :prerequisite

  has_many :inverse_course_prerequisites, class_name: 'CoursePrerequisite', foreign_key: :prerequisite_id, dependent: :destroy
  has_many :dependent_courses, through: :inverse_course_prerequisites, source: :course

  has_many :requirement_courses
  has_many :requirements, through: :requirement_courses


  validates :name, :subject_id, :code, :credits, presence: true
end
