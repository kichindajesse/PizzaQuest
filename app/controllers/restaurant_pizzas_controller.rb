class RestaurantPizzasController < ApplicationController
  def create
    restaurant_pizza = RestaurantPizza.new(restaurant_pizza_params)

    if restaurant_pizza.save
      redirect_to restaurant_path(restaurant_pizza.restaurant_id), notice: 'Pizza added successfully'
    else
      redirect_to restaurant_path(restaurant_pizza.restaurant_id), alert: 'Pizza could not be added'
    end
  end

  private

  def restaurant_pizza_params
    params.require(:restaurant_pizza).permit(:restaurant_id, :pizza_id)
  end
end

