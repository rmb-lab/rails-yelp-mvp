class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    @reviews = Review.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @average = average(@restaurant)
  end

  # CREATE
  ## GET the form
  def new
    @restaurant = Restaurant.new
  end

  ## POST the form
  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to restaurant_path(@restaurant)
  end

  def average(restaurant)
    if restaurant.reviews.count.zero?
      'not rated'
    else
      sum = 0
      restaurant.reviews.each do |review|
        sum += review.rating
      end
      sum / restaurant.reviews.count
    end
  end

  private

  # STRONG PARAMS
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
