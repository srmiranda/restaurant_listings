require 'rails_helper'

feature 'view questions', %Q{
  As a user
  I want to view recently posted restaurants
  So that I can see where to eat
} do

  scenario 'visitor views index' do
    restaurant = FactoryGirl.create(:restaurant)

    visit restaurants_path
    expect(page).to have_content("Pasta House")
  end
end
