require 'rails_helper'

RSpec.describe "requirements/show", type: :view do
  before(:each) do
    assign(:requirement, Requirement.create!(
      name: "Name",
      degree_plan: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
  end
end
