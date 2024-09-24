require 'rails_helper'

RSpec.describe "degree_plans/show", type: :view do
  before(:each) do
    assign(:degree_plan, DegreePlan.create!(
      name: "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
