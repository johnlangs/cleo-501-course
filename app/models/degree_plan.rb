class DegreePlan < ApplicationRecord
  has_many :requirements, dependent: :destroy
end
