class RequirementCourse < ApplicationRecord
  belongs_to :requirement
  belongs_to :course

  validates :requirement_id, :course_id, presence: true
end
