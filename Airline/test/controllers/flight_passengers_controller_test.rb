require 'test_helper'

class FlightPassengersControllerTest < ActionController::TestCase
  setup do
    @flight_passenger = flight_passengers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:flight_passengers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create flight_passenger" do
    assert_difference('FlightPassenger.count') do
      post :create, flight_passenger: { flight_id: @flight_passenger.flight_id, passenger_id: @flight_passenger.passenger_id }
    end

    assert_redirected_to flight_passenger_path(assigns(:flight_passenger))
  end

  test "should show flight_passenger" do
    get :show, id: @flight_passenger
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @flight_passenger
    assert_response :success
  end

  test "should update flight_passenger" do
    patch :update, id: @flight_passenger, flight_passenger: { flight_id: @flight_passenger.flight_id, passenger_id: @flight_passenger.passenger_id }
    assert_redirected_to flight_passenger_path(assigns(:flight_passenger))
  end

  test "should destroy flight_passenger" do
    assert_difference('FlightPassenger.count', -1) do
      delete :destroy, id: @flight_passenger
    end

    assert_redirected_to flight_passengers_path
  end
end
