class User < ApplicationRecord
  # to be uncommented when Major entity is pushed
  # has_one :major  #  scope limitation (no double majors)
  has_many :user_plan_courses

  devise :omniauthable, omniauth_providers: [:google_oauth2]

  # Creates a user from Google OAuth data or returns an existing one
  def self.from_google(email:, full_name:, uid:)
    find_or_create_by(email: email) do |user|
      user.uid = uid
      user.full_name = full_name
      # Set a dummy or default password if your model requires one
      # user.password = Devise.friendly_token[0, 20]  
    end
  end

  # def self.from_omniauth(auth)
  #   where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
  #     user.email = auth.info.email
  #     user.full_name = auth.info.name
  #   end
  # end

  #validates :email, :password, :isAdmin, presence: true
end
