class User < ApplicationRecord
  # has_one :major  #  scope limitation (no double majors)
  has_many :user_interests
  has_many :interests, through: :user_interests

  # validates :email, :password, :isAdmin, presence: true
end
