require 'rails_helper'

RSpec.describe "course_prerequisites/index", type: :view do
  before(:each) do
    assign(:course_prerequisites, [
      CoursePrerequisite.create!(
        course: nil,
        prerequisite: nil
      ),
      CoursePrerequisite.create!(
        course: nil,
        prerequisite: nil
      )
    ])
  end

  it "renders a list of course_prerequisites" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
