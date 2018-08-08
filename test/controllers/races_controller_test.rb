require 'test_helper'

class RacesControllerTest < ActionController::TestCase
  setup do
    @race = races(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:races)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create race" do
    assert_difference('Race.count') do
      post :create, race: { address_1: @race.address_1, address_2: @race.address_2, end_date: @race.end_date, event_date: @race.event_date, event_name: @race.event_name, market_name: @race.market_name, rtm: @race.rtm, start_date: @race.start_date, tm5k: @race.tm5k, tmf: @race.tmf, tmh: @race.tmh, tmx: @race.tmx, venue: @race.venue, venue_city: @race.venue_city, venue_state: @race.venue_state, weekend_name: @race.weekend_name }
    end

    assert_redirected_to race_path(assigns(:race))
  end

  test "should show race" do
    get :show, id: @race
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @race
    assert_response :success
  end

  test "should update race" do
    patch :update, id: @race, race: { address_1: @race.address_1, address_2: @race.address_2, end_date: @race.end_date, event_date: @race.event_date, event_name: @race.event_name, market_name: @race.market_name, rtm: @race.rtm, start_date: @race.start_date, tm5k: @race.tm5k, tmf: @race.tmf, tmh: @race.tmh, tmx: @race.tmx, venue: @race.venue, venue_city: @race.venue_city, venue_state: @race.venue_state, weekend_name: @race.weekend_name }
    assert_redirected_to race_path(assigns(:race))
  end

  test "should destroy race" do
    assert_difference('Race.count', -1) do
      delete :destroy, id: @race
    end

    assert_redirected_to races_path
  end
end
