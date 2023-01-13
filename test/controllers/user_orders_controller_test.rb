require "test_helper"

class UserOrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_orders_index_url
    assert_response :success
  end

  test "should get show" do
    get user_orders_show_url
    assert_response :success
  end

  test "should get create" do
    get user_orders_create_url
    assert_response :success
  end

  test "should get destory" do
    get user_orders_destory_url
    assert_response :success
  end
end
