require 'rails_helper'

RSpec.describe "user_plan_courses/new", type: :view do
  before(:each) do
    assign(:user_plan_course, UserPlanCourse.new())
  end

  it "renders new user_plan_course form" do
    render

    assert_select "form[action=?][method=?]", user_plan_courses_path, "post" do
    end
  end
end
