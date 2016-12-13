require 'test_helper'

class CarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @car = cars(:one)
  end

  test "should get index" do
    get cars_url
    assert_response :success
  end

  test "should get new" do
    get new_car_url
    assert_response :success
  end

  test "should create car" do
    assert_difference('Car.count') do
      post cars_url, params: { car: { description: @car.description, doors: @car.doors, engine: @car.engine, ext_color: @car.ext_color, fuel: @car.fuel, hp: @car.hp, int_color: @car.int_color, make_id: @car.make_id, owners: @car.owners, price: @car.price, total_km: @car.total_km, transmission: @car.transmission, year: @car.year } }
    end

    assert_redirected_to car_url(Car.last)
  end

  test "should show car" do
    get car_url(@car)
    assert_response :success
  end

  test "should get edit" do
    get edit_car_url(@car)
    assert_response :success
  end

  test "should update car" do
    patch car_url(@car), params: { car: { description: @car.description, doors: @car.doors, engine: @car.engine, ext_color: @car.ext_color, fuel: @car.fuel, hp: @car.hp, int_color: @car.int_color, make_id: @car.make_id, owners: @car.owners, price: @car.price, total_km: @car.total_km, transmission: @car.transmission, year: @car.year } }
    assert_redirected_to car_url(@car)
  end

  test "should destroy car" do
    assert_difference('Car.count', -1) do
      delete car_url(@car)
    end

    assert_redirected_to cars_url
  end
end
