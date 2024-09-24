require 'rails_helper'

RSpec.describe "user_interests/new", type: :view do
  before(:each) do
    assign(:user_interest, UserInterest.new(
      interest: "MyString"
    ))
  end

  it "renders new user_interest form" do
    render

    assert_select "form[action=?][method=?]", user_interests_path, "post" do

      assert_select "input[name=?]", "user_interest[interest]"
    end
  end
end
