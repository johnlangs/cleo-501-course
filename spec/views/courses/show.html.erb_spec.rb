require 'rails_helper'

RSpec.describe "courses/show", type: :view do
  before(:each) do
    assign(:course, Course.create!(
      name: "Name",
      subject: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
  end
end
