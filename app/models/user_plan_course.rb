class UserPlanCourse < ApplicationRecord
  belongs_to :user
  belongs_to :course

  validates :user_id, :has_taken, presence: true
end

# migrated and added relationships
