class UserPlanCourse < ApplicationRecord
  belongs_to :user
  belongs_to :course

  validates :user_id, :course_id, :semester, presence: true
end

# migrated and added relationships
