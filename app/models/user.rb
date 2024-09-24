class User < ApplicationRecord
  # to be uncommented when Major entity is pushed
  # has_one :major  #  scope limitation (no double majors)
  has_many :user_plan_courses

  #validates :email, :password, :isAdmin, presence: true
end
