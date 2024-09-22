require 'rails_helper'

RSpec.describe "user_plan_courses/index", type: :view do
  before(:each) do
    assign(:user_plan_courses, [
      UserPlanCourse.create!(),
      UserPlanCourse.create!()
    ])
  end

  it "renders a list of user_plan_courses" do
    render
    cell_selector = 'div>p'
  end
end
