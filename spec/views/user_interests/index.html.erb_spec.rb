require 'rails_helper'

RSpec.describe "user_interests/index", type: :view do
  before(:each) do
    assign(:user_interests, [
      UserInterest.create!(
        interest: "Interest"
      ),
      UserInterest.create!(
        interest: "Interest"
      )
    ])
  end

  it "renders a list of user_interests" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Interest".to_s), count: 2
  end
end
