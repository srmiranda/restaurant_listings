require 'rails_helper'

feature 'view questions', %Q{
  As a user
  I want to list my own restaurant
  So that others can see it on the index page
} do


  scenario 'visitor creates a restaurant listing' do
    restaurant = FactoryGirl.create(:restaurant)

    visit restaurants_path

    click_link "Add a listing"
    fill_in "Name", with: restaurant.name
    fill_in "Address", with: restaurant.address
    fill_in "City", with: restaurant.city
    fill_in "State", with: restaurant.state
    fill_in "Zip", with: restaurant.zip
    fill_in "Description", with: restaurant.description
    fill_in "Category", with: restaurant.category
    click_button "Add Restaurant"

    expect(page).to have_content("Pasta House")
    expect(page).to have_content("5 Alden Rd")
    expect(page).to have_content("Fairhaven")
    expect(page).to have_content("MA")
    expect(page).to have_content("02719")
    expect(page).to have_content("Great homestyle Italian food.")
    expect(page).to have_content("Italian")
  end
end
