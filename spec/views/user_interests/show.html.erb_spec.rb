require 'rails_helper'

RSpec.describe "user_interests/show", type: :view do
  before(:each) do
    assign(:user_interest, UserInterest.create!(
      interest: "Interest"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Interest/)
  end
end
