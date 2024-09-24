require 'rails_helper'

RSpec.describe "requirement_courses/index", type: :view do
  before(:each) do
    assign(:requirement_courses, [
      RequirementCourse.create!(
        requirement: nil,
        course: nil
      ),
      RequirementCourse.create!(
        requirement: nil,
        course: nil
      )
    ])
  end

  it "renders a list of requirement_courses" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
