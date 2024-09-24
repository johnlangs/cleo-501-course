require 'rails_helper'

RSpec.describe "requirement_courses/new", type: :view do
  before(:each) do
    assign(:requirement_course, RequirementCourse.new(
      requirement: nil,
      course: nil
    ))
  end

  it "renders new requirement_course form" do
    render

    assert_select "form[action=?][method=?]", requirement_courses_path, "post" do

      assert_select "input[name=?]", "requirement_course[requirement_id]"

      assert_select "input[name=?]", "requirement_course[course_id]"
    end
  end
end
