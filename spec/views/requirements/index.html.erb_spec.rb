require 'rails_helper'

RSpec.describe "requirements/index", type: :view do
  before(:each) do
    assign(:requirements, [
      Requirement.create!(
        name: "Name",
        degree_plan: nil
      ),
      Requirement.create!(
        name: "Name",
        degree_plan: nil
      )
    ])
  end

  it "renders a list of requirements" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
