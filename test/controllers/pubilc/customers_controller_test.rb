require "test_helper"

class Pubilc::CustomersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get pubilc_customers_show_url
    assert_response :success
  end

  test "should get edit" do
    get pubilc_customers_edit_url
    assert_response :success
  end

  test "should get update" do
    get pubilc_customers_update_url
    assert_response :success
  end

  test "should get confirm" do
    get pubilc_customers_confirm_url
    assert_response :success
  end

  test "should get withdraw" do
    get pubilc_customers_withdraw_url
    assert_response :success
  end
end
