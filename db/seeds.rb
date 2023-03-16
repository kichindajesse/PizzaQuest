puts "🌱 Seeding spices..."

# Create some restaurants
restaurant1 = Restaurant.create(name: "Sottocasa NYC", address: "298 Atlantic Ave, Brooklyn, NY 11201")
restaurant2 = Restaurant.create(name: "PizzArte", address: "69 W 55th St, New York, NY 10019")
restaurant3 = Restaurant.create(name: "Di Fara Pizza", address: "1424 Avenue J, Brooklyn, NY 11230")

# Create some pizzas
pizza1 = Pizza.create(name: "Cheese", ingredients: "Dough, Tomato Sauce, Cheese")
pizza2 = Pizza.create(name: "Pepperoni", ingredients: "Dough, Tomato Sauce, Cheese, Pepperoni")
pizza3 = Pizza.create(name: "Margherita", ingredients: "Dough, Tomato Sauce, Mozzarella, Basil")

# Create some RestaurantPizzas
restaurant_pizza1 = RestaurantPizza.create(restaurant: restaurant1, pizza: pizza1, price: 10)
restaurant_pizza2 = RestaurantPizza.create(restaurant: restaurant1, pizza: pizza2, price: 12)
restaurant_pizza3 = RestaurantPizza.create(restaurant: restaurant2, pizza: pizza1, price: 9)
restaurant_pizza4 = RestaurantPizza.create(restaurant: restaurant2, pizza: pizza2, price: 11)
restaurant_pizza5 = RestaurantPizza.create(restaurant: restaurant2, pizza: pizza3, price: 13)
restaurant_pizza6 = RestaurantPizza.create(restaurant: restaurant3, pizza: pizza1, price: 8)
restaurant_pizza7 = RestaurantPizza.create(restaurant: restaurant3, pizza: pizza3, price: 14)

puts "✅ Done seeding!"