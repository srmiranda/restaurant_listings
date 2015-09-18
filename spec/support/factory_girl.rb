require 'factory_girl'

FactoryGirl.define do
  factory :restaurant do
    name "Pasta House"
    address "5 Alden Rd"
    city "Fairhaven"
    state "MA"
    zip "02719"
    description "Great homestyle Italian food."
    category "Italian"
  end
end
