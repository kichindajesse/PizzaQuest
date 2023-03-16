require "test_helper"

class RestaurantsControllerTest < ActionDispatch::IntegrationTest
  test "should get Restaurants_pizza" do
    get restaurants_Restaurants_pizza_url
    assert_response :success
  end

  test "should get Pizza" do
    get restaurants_Pizza_url
    assert_response :success
  end
end
