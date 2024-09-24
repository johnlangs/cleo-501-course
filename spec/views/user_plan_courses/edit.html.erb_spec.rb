require 'rails_helper'

RSpec.describe "user_plan_courses/edit", type: :view do
  let(:user_plan_course) {
    UserPlanCourse.create!()
  }

  before(:each) do
    assign(:user_plan_course, user_plan_course)
  end

  it "renders the edit user_plan_course form" do
    render

    assert_select "form[action=?][method=?]", user_plan_course_path(user_plan_course), "post" do
    end
  end
end
