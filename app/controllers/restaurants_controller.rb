class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    render json: @restaurants, include: [:pizzas]
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    render json: @restaurant, include: [:pizzas]
  rescue ActiveRecord::RecordNotFound
    render json: { error: "Restaurant not found" }, status: :not_found
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    head :no_content
  rescue ActiveRecord::RecordNotFound
    render json: { error: "Restaurant not found" }, status: :not_found
  end
end

