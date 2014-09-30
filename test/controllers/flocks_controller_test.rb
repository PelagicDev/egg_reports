require 'test_helper'

class FlocksControllerTest < ActionController::TestCase
  setup do
    @flock = flocks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:flocks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create flock" do
    assert_difference('Flock.count') do
      post :create, flock: { close_date: @flock.close_date, hen_feed: @flock.hen_feed, hens: @flock.hens, house_id: @flock.house_id, male_feed: @flock.male_feed, males: @flock.males, open_date: @flock.open_date, water_meter: @flock.water_meter }
    end

    assert_redirected_to flock_path(assigns(:flock))
  end

  test "should show flock" do
    get :show, id: @flock
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @flock
    assert_response :success
  end

  test "should update flock" do
    patch :update, id: @flock, flock: { close_date: @flock.close_date, hen_feed: @flock.hen_feed, hens: @flock.hens, house_id: @flock.house_id, male_feed: @flock.male_feed, males: @flock.males, open_date: @flock.open_date, water_meter: @flock.water_meter }
    assert_redirected_to flock_path(assigns(:flock))
  end

  test "should destroy flock" do
    assert_difference('Flock.count', -1) do
      delete :destroy, id: @flock
    end

    assert_redirected_to flocks_path
  end
end
