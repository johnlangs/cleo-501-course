require 'rails_helper'

RSpec.describe "user_plan_courses/show", type: :view do
  before(:each) do
    assign(:user_plan_course, UserPlanCourse.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
