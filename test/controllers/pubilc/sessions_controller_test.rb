require "test_helper"

class Pubilc::SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get pubilc_sessions_new_url
    assert_response :success
  end

  test "should get create" do
    get pubilc_sessions_create_url
    assert_response :success
  end

  test "should get destroy" do
    get pubilc_sessions_destroy_url
    assert_response :success
  end
end
