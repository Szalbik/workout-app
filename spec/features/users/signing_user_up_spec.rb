require 'rails_helper'

RSpec.feature "Signing user up" do
  scenario do
    visit "/"

    click_link "Sign up"

    fill_in "Email", with: "john@example.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_button "Sign up"

    expect(page).to have_content("Welcome! You have signed up successfully.")
    expect(page).to have_link("Sign out")
    expect(page).to_not have_link("Sign in")
    expect(page).to_not have_link("Sign up")
  end

end