require 'rails_helper'

RSpec.describe "degree_plans/new", type: :view do
  before(:each) do
    assign(:degree_plan, DegreePlan.new(
      name: "MyString"
    ))
  end

  it "renders new degree_plan form" do
    render

    assert_select "form[action=?][method=?]", degree_plans_path, "post" do

      assert_select "input[name=?]", "degree_plan[name]"
    end
  end
end
