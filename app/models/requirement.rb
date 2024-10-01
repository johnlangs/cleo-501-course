class Requirement < ApplicationRecord
  belongs_to :degree_plan
  has_many :requirement_courses
  has_many :courses, through: :requirement_courses
end
