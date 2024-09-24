class RequirementCourse < ApplicationRecord
  belongs_to :requirement
  belongs_to :course
end
