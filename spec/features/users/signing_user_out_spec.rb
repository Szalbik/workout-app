require 'rails_helper'

RSpec.feature "Sign user out" do
  before do
    @john = User.create!(email: "john@example.com", password: "password")
  end

  scenario do
    login_as(@john)

    visit '/'

    click_link "Sign out"

    expect(page).to have_content("Signed out successfully.")
    expect(page).to_not have_content("Signed in as #{@john.email}")
    expect(page).to_not have_link("Sign out")
  end
end