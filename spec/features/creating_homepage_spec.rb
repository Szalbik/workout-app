require 'rails_helper'

RSpec.feature "Cerating Home Page" do
  scenario do
    visit "/"

    expect(page).to have_link("Home")
    expect(page).to have_link("Athlets Den")
    expect(page).to have_content("Workout Lounge!")
    expect(page).to have_content("Show off your workout")
  end
end