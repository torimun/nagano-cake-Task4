require "test_helper"

class Pubilc::RegistrationsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get pubilc_registrations_new_url
    assert_response :success
  end

  test "should get create" do
    get pubilc_registrations_create_url
    assert_response :success
  end
end
