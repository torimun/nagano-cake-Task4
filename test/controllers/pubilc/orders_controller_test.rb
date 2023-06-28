require "test_helper"

class Pubilc::OrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get pubilc_orders_new_url
    assert_response :success
  end

  test "should get confirm" do
    get pubilc_orders_confirm_url
    assert_response :success
  end

  test "should get done" do
    get pubilc_orders_done_url
    assert_response :success
  end

  test "should get create" do
    get pubilc_orders_create_url
    assert_response :success
  end

  test "should get index" do
    get pubilc_orders_index_url
    assert_response :success
  end

  test "should get show" do
    get pubilc_orders_show_url
    assert_response :success
  end
end
