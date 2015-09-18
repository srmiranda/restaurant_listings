class Review < ActiveRecord::Base
  belongs_to :restaurant

  validates :body, presence: true
  validates :rating, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, inclusion: { in: 1..5, message: "Must be 1 through 5" }
  validates :restaurant_id, presence: true
end
