require 'test_helper'

class LoginControllerTest < ActionDispatch::IntegrationTest
  test "should get check" do
    get login_check_url
    assert_response :success
  end

  test "should get valid" do
    get login_valid_url
    assert_response :success
  end

end
