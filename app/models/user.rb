class User < ApplicationRecord
  # to be uncommented when Major entity is pushed
  # has_one :major  #  scope limitation (no double majors)
  has_many :user_plan_courses
  after_create :create_user_plan

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
  def create_user_plan
    i = 0
    RequirementCourse.joins(:course).order("courses.code ASC").each do |req_course|
      i += 1
      UserPlanCourse.create(user: self, course: req_course.course, has_taken: false, semester: i%10)
    end
  end
end
