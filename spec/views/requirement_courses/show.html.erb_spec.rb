require 'rails_helper'

RSpec.describe "requirement_courses/show", type: :view do
  before(:each) do
    assign(:requirement_course, RequirementCourse.create!(
      requirement: nil,
      course: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
