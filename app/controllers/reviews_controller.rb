class ReviewsController < ApplicationController
  def index
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      flash[:errors] = @review.errors.full_messages.join(", ")
      render :new
    end
  end

  protected

  def review_params
    params.require(:review).permit(:rating, :body, :restaurant_id)
  end
end
