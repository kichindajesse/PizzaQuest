require "test_helper"

class RestaurantsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get restaurants_index_url
    assert_response :success
  end

  test "should get show" do
    get restaurants_show_url
    assert_response :success
  end

  test "should get destroy" do
    get restaurants_destroy_url
    assert_response :success
  end

  test "should get Restaurants_pizza" do
    get restaurants_Restaurants_pizza_url
    assert_response :success
  end

  test "should get Pizza" do
    get restaurants_Pizza_url
    assert_response :success
  end
end
