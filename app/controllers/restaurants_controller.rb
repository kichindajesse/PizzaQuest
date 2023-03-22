class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    render json: @restaurants
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    render json: @restaurant, include: [:pizzas]
  rescue ActiveRecord::RecordNotFound
    render json: { error: "Restaurant not found" }, status: :not_found
  end


    def destroy
        restaurant = find_restaurant
        restaurant.destroy
        head :no_content
    end

    private
    def find_restaurant
        Restaurant.find(params[:id])
    end
      

    def render_not_found_response
        render json: { error: "Restaurant not found" }, status: :not_found
    end
end
