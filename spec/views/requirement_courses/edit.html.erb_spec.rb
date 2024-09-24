require 'rails_helper'

RSpec.describe "requirement_courses/edit", type: :view do
  let(:requirement_course) {
    RequirementCourse.create!(
      requirement: nil,
      course: nil
    )
  }

  before(:each) do
    assign(:requirement_course, requirement_course)
  end

  it "renders the edit requirement_course form" do
    render

    assert_select "form[action=?][method=?]", requirement_course_path(requirement_course), "post" do

      assert_select "input[name=?]", "requirement_course[requirement_id]"

      assert_select "input[name=?]", "requirement_course[course_id]"
    end
  end
end
