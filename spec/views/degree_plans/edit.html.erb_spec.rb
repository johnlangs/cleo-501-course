require 'rails_helper'

RSpec.describe "degree_plans/edit", type: :view do
  let(:degree_plan) {
    DegreePlan.create!(
      name: "MyString"
    )
  }

  before(:each) do
    assign(:degree_plan, degree_plan)
  end

  it "renders the edit degree_plan form" do
    render

    assert_select "form[action=?][method=?]", degree_plan_path(degree_plan), "post" do

      assert_select "input[name=?]", "degree_plan[name]"
    end
  end
end
