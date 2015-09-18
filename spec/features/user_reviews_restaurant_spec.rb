require 'rails_helper'

feature 'view questions', %Q{
  As a user
  I want to view a restaurants details
  So that I can then add a review for it
} do


  scenario 'visitor views restaurant and adds review' do
    restaurant = FactoryGirl.create(:restaurant)

    visit restaurant_path(restaurant)
    click_link "Add a Review"
    fill_in "Body", with: "Best I've ever had!"
    fill_in "Rating", with: 5

    click_button "Add Review"

    expect(page).to have_content("Pasta House")
    expect(page).to have_content("Best I've ever had!")
    expect(page).to have_content(5)
  end
end
