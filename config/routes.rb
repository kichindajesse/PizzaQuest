Rails.application.routes.draw do
  get 'restaurant_pizzas/create'
  get 'pizzas/index'
  get 'restaurants/index'
  get 'restaurants/show'
  get 'restaurants/destroy'
  get 'restaurants/Restaurants_pizza'
  get 'restaurants/Pizza'
  get 'restaurants/Restaurants_pizza'
  get 'restaurants/Pizza'
  resources :restaurants, only: [:index, :show, :destroy]
  resources :pizzas, only: [:index]
  resources :restaurant_pizzas, only: [:create]
end

