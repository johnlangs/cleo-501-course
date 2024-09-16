require 'rails_helper'

RSpec.describe "requirements/new", type: :view do
  before(:each) do
    assign(:requirement, Requirement.new(
      name: "MyString",
      degree_plan: nil
    ))
  end

  it "renders new requirement form" do
    render

    assert_select "form[action=?][method=?]", requirements_path, "post" do

      assert_select "input[name=?]", "requirement[name]"

      assert_select "input[name=?]", "requirement[degree_plan_id]"
    end
  end
end
