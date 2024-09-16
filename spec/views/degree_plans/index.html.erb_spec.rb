require 'rails_helper'

RSpec.describe "degree_plans/index", type: :view do
  before(:each) do
    assign(:degree_plans, [
      DegreePlan.create!(
        name: "Name"
      ),
      DegreePlan.create!(
        name: "Name"
      )
    ])
  end

  it "renders a list of degree_plans" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
  end
end
