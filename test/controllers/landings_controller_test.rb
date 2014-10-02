require 'test_helper'

class LandingsControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get admin" do
    get :admin
    assert_response :success
  end

end
