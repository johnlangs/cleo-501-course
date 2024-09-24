require 'rails_helper'

RSpec.describe "course_prerequisites/new", type: :view do
  before(:each) do
    assign(:course_prerequisite, CoursePrerequisite.new(
      course: nil,
      prerequisite: nil
    ))
  end

  it "renders new course_prerequisite form" do
    render

    assert_select "form[action=?][method=?]", course_prerequisites_path, "post" do

      assert_select "input[name=?]", "course_prerequisite[course_id]"

      assert_select "input[name=?]", "course_prerequisite[prerequisite_id]"
    end
  end
end
