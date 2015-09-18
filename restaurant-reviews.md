### Requirements for Meeting Expectations

Create a Rails application that allows users to view restaurants. The application must satisfy the following criteria:

* A restaurant must have a name, address, city, state, and zip code. It can optionally have a description and a category (e.g. *thai*, *italian*, *chinese*).
* Visiting the `/restaurants` path should contain a list of restaurants.
* Visiting the `/restaurants/new` path should display a form for creating a new restaurant.
* Visiting the `/restaurants/10` path should show the restaurant details for a restaurant with the ID of 10.
* Visiting the root path should display a list of all restaurants.
* When adding a new restaurant, if I fill out the form correctly, I should see the page for the newly created restaurant.
* When adding a new restaurant, if I fill out the form incorrectly and submit the form, I should see the form and be displayed the validation errors.

Once these criteria have been met, add the ability for users to review restaurants. The application must satisfy the following criteria:

* A restaurant can have many reviews. Each review must contain the following:
  - A rating between 1 and 5, inclusive. This should be a whole number.
  - A body
  - A timestamp for when it was created
* Visiting the `/restaurants/10/reviews/new` should display a form for creating a new review for a restaurant with ID = 10.
* Visiting the `/restaurants/10` path should also include all reviews for a restaurant with ID = 10.

For this challenge assume all restaurants and reviews are submitted anonymously (user authentication is **not** required).

To get started, create a new Rails application in your `restaurant-reviews` folder with the following commands:

```no-highlight
$ et get restaurant-reviews
$ cd restaurant-reviews
$ rails new . --database=postgresql -T
```

A seeder for restaurants and reviews has been provided for you in the root project path. You may use it, modify it to suit your needs, or disregard it.

### Requirements for Exceeding Expectations

Write acceptance tests for this application. At a minimum, you should have tests for the following:
  - Viewing the Restaurants index page
  - Adding a new Restaurant
  - Viewing the details of a Restaurant
  - Adding a review
