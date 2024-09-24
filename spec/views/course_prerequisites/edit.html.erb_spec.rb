require 'rails_helper'

RSpec.describe "course_prerequisites/edit", type: :view do
  let(:course_prerequisite) {
    CoursePrerequisite.create!(
      course: nil,
      prerequisite: nil
    )
  }

  before(:each) do
    assign(:course_prerequisite, course_prerequisite)
  end

  it "renders the edit course_prerequisite form" do
    render

    assert_select "form[action=?][method=?]", course_prerequisite_path(course_prerequisite), "post" do

      assert_select "input[name=?]", "course_prerequisite[course_id]"

      assert_select "input[name=?]", "course_prerequisite[prerequisite_id]"
    end
  end
end
