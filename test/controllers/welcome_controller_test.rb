require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get welcome_index_url
    assert_response :success
  end

  test "should get admin_panel" do
    get welcome_admin_panel_url
    assert_response :success
  end

  test "should get info_car" do
    get welcome_info_car_url
    assert_response :success
  end

end
