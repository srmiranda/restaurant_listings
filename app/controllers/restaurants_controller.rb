class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @reviews = @restaurant.reviews
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant.id)
    else
      flash[ :error] = @restaurant.errors.full_messages.join(", ")
      render :new
    end
  end

  protected

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :city,
    :state, :zip, :description, :category)
  end
end
