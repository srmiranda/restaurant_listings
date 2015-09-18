require 'spec_helper'

RSpec.describe Restaurant do

  context 'restaurants' do
  let!(:restaurant) { FactoryGirl.create(:restaurant) }

    it "should have a name" do
      expect(restaurant.name).to eq("Pasta House")
      expect(restaurant.name).to_not eq("Bobs Burgers")
      expect(restaurant.name).to_not eq("")
    end

    it "should have a address" do
      expect(restaurant.address).to eq("5 Alden Rd")
      expect(restaurant.address).to_not eq("")
      expect(restaurant.address).to_not eq("123 Main St")
    end

    it "should have a city" do
      expect(restaurant.city).to eq("Fairhaven")
      expect(restaurant.city).to_not eq("Paris")
      expect(restaurant.city).to_not eq("")
    end

    it "should have a state" do
      expect(restaurant.state).to eq("MA")
      expect(restaurant.state).to_not eq("RI")
      expect(restaurant.state).to_not eq("")
    end

    it "should have a zip" do
      expect(restaurant.zip).to eq("02719")
      expect(restaurant.zip).to_not eq("00000")
      expect(restaurant.zip).to_not eq("")
    end

  end
end
