require 'rails_helper'

feature 'view questions', %Q{
  As a user
  I want to visit a particular restaurant
  So that I can see its details
} do

  scenario 'visitor views restaurant details' do
    restaurant = FactoryGirl.create(:restaurant)

    visit restaurant_path(restaurant)
    expect(page).to have_content("Pasta House")
    expect(page).to have_content("5 Alden Rd")
    expect(page).to have_content("Fairhaven")
    expect(page).to have_content("MA")
    expect(page).to have_content("02719")
  end
end
