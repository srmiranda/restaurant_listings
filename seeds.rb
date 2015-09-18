restaurants = [
  { name: "jm Curley",
    address: "21 Temple Pl",
    city: "Boston",
    state: "MA",
    zip_code: "02111",
    description: "Eatery specializing in innovative American
      comfort food, also serving beer, boozy shakes & drinks",
    category: "Gastropub" },

  { name: "Corner Pub",
    address: "162 Lincoln St",
    city: "Boston",
    state: "MA",
    zip_code: "02111",
    description: "Roomy, corner bar pairing cocktails & brews
      as well as huge burgers & other pub fare",
    category: "Bar" },

  { name: "Al Capone",
    address: "82 Summer St",
    city: "Boston",
    state: "MA",
    zip_code: "02110",
    description: "Hefty slices & subs are served at this colorful
      pizza joint for eat-in (limited seating) or takeout.",
    category: "American" },

  { name: "Falafel King",
    address: "62 Summer St",
    city: "Boston",
    state: "MA",
    zip_code: "02110",
    description: "Compact counter-service spot doling out the
      namesake dish & other Middle Eastern fare. ",
    category: "Mediterranean" },

  { name: "Boston Kitchen Pizza",
    address: "1 Stuart St",
    city: "Boston",
    state: "MA",
    zip_code: "02111",
    description: "'Boston Pizza Kitchen' makes more sense to me.
      Someone needs to tell them to rebrand.",
    category: "Italian" },

  { name: "Sa Pa",
    address: "92 Bedford St",
    city: "Boston",
    state: "MA",
    zip_code: "02111",
    description: "Mod, industrial counter-order joint for casual
      Vietnamese fare at communal tables, or for takeout.",
    category: "Vietnamese" },

  { name: "Ceasar's Take Out",
    address: "34 Essex St",
    city: "Boston",
    state: "MA",
    zip_code: "02111",
    description: "Home of the '2 slices and a coke for $4' deal.
      Sadly, they are now closed.",
    category: "Italian" },

  { name: "Xinh Xinh Restaurant",
    address: "7 Beach St",
    city: "Boston",
    state: "MA",
    zip_code: "02111",
    description: "Some of the best Vietnamese cuisine around.",
    category: "Vietnamese" },

  { name: "Cha Cha Cha Taqueria",
    address: "48 Winter St",
    city: "Boston",
    state: "MA",
    zip_code: "02108",
    description: "A stand inside Back Bay station.
      Best tacos in the city.",
    category: "Mexican" },

  { name: "Five Guys Burgers and Fries",
    address: "58 Summer St",
    city: "Boston",
    state: "MA",
    zip_code: "02110",
    description: "Fast-food chain with made-to-order burgers,
      fries & hot dogs, plus free peanuts while you wait.",
    category: "American" },

  { name: "Dumpling King",
    address: "40 Harrison Ave",
    city: "Boston",
    state: "MA",
    zip_code: "02111",
    description: "Cheap dumplings. Buy a cell phone while you wait.",
    category: "Asian" },

=begin
  { name: "",
    address: "",
    city: "Boston",
    state: "MA",
    zip_code: "",
    description: "",
    category_name: "" },
=end
]

# bail out if Restaurant model doesn't exist
unless defined?(Restaurant)
  puts "The Restaurant model is not defined. Exiting..."
  exit
end

restaurants.each do |restaurant_attributes|
  restaurant = Restaurant.find_or_initalize_by(name: restaurant_attributes[:name])
  restaurant.update_attributes(restaurant_attributes)
end

# bail out if Review model doesn't exist
unless defined?(Review)
  puts "The Review model is not defined. Exiting..."
  exit
end

meals = ["Chicken", "Lamb", "Brussels Sprout", "Filet mignon", "Rice", "Pop-Tart", "Soup"]
opinions = %w(Terrible OK Average Great AMAZING)

Restaurant.all.each do |restaurant|
  3.times do
    opinion = opinion.sample

    review_params = {
      rating: opinions.index(opinion) + 1,
      body: "I had the #{meal.sample}, it was #{opinion}."
    }

    restaurant.reviews.create(review_params)
  end
end
