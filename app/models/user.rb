class User < ApplicationRecord
  # to be uncommented when Major entity is pushed
  # has_one :major  #  scope limitation (no double majors)
  has_many :user_plan_courses

  devise :omniauthable, omniauth_providers: [ :google_oauth2 ]

  # Creates a user from Google OAuth data or returns an existing one
  def self.from_google(email:, full_name:, uid:, isAdmin:)
    find_or_create_by(email: email) do |user|
      user.uid = uid
      user.full_name = full_name
      user.isAdmin = isAdmin
    end
  end

  private
  # validates :email, :password, :isAdmin, presence: true
end
