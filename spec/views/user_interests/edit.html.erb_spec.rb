require 'rails_helper'

RSpec.describe "user_interests/edit", type: :view do
  let(:user_interest) {
    UserInterest.create!(
      interest: "MyString"
    )
  }

  before(:each) do
    assign(:user_interest, user_interest)
  end

  it "renders the edit user_interest form" do
    render

    assert_select "form[action=?][method=?]", user_interest_path(user_interest), "post" do

      assert_select "input[name=?]", "user_interest[interest]"
    end
  end
end
