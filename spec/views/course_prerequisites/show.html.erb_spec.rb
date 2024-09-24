require 'rails_helper'

RSpec.describe "course_prerequisites/show", type: :view do
  before(:each) do
    assign(:course_prerequisite, CoursePrerequisite.create!(
      course: nil,
      prerequisite: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
