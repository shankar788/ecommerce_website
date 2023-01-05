require "test_helper"

class UserLoginsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_logins_index_url
    assert_response :success
  end

  test "should get create" do
    get user_logins_create_url
    assert_response :success
  end

  test "should get show" do
    get user_logins_show_url
    assert_response :success
  end

  test "should get update" do
    get user_logins_update_url
    assert_response :success
  end

  test "should get destory" do
    get user_logins_destory_url
    assert_response :success
  end
end
