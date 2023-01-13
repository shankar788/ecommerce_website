require "test_helper"

class CartsControllerTest < ActionDispatch::IntegrationTest
  test "should get quantity_increment" do
    get carts_quantity_increment_url
    assert_response :success
  end

  test "should get quantity_decrement" do
    get carts_quantity_decrement_url
    assert_response :success
  end

  test "should get index" do
    get carts_index_url
    assert_response :success
  end

  test "should get show" do
    get carts_show_url
    assert_response :success
  end

  test "should get add_to_cart" do
    get carts_add_to_cart_url
    assert_response :success
  end

  test "should get user_cart_details" do
    get carts_user_cart_details_url
    assert_response :success
  end
end
