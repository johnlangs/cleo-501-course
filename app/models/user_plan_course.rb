class UserPlanCourse < ApplicationRecord
  belongs_to :user
  belongs_to :course
end

# migrated and added relationships
