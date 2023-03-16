Rails.application.routes.draw do
  get 'restaurants/Restaurants_pizza'
  get 'restaurants/Pizza'
  resources :restaurants, only: [:index, :show, :destroy]
  resources :pizzas, only: [:index]
  resources :restaurant_pizzas, only: [:create]
end

