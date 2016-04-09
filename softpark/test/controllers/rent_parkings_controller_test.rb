require 'test_helper'

class RentParkingsControllerTest < ActionController::TestCase
  setup do
    @rent_parking = rent_parkings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rent_parkings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rent_parking" do
    assert_difference('RentParking.count') do
      post :create, rent_parking: { addres: @rent_parking.addres, description: @rent_parking.description, location_id: @rent_parking.location_id, phone: @rent_parking.phone, price: @rent_parking.price, title: @rent_parking.title, type_parking_id: @rent_parking.type_parking_id, user_id: @rent_parking.user_id }
    end

    assert_redirected_to rent_parking_path(assigns(:rent_parking))
  end

  test "should show rent_parking" do
    get :show, id: @rent_parking
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rent_parking
    assert_response :success
  end

  test "should update rent_parking" do
    patch :update, id: @rent_parking, rent_parking: { addres: @rent_parking.addres, description: @rent_parking.description, location_id: @rent_parking.location_id, phone: @rent_parking.phone, price: @rent_parking.price, title: @rent_parking.title, type_parking_id: @rent_parking.type_parking_id, user_id: @rent_parking.user_id }
    assert_redirected_to rent_parking_path(assigns(:rent_parking))
  end

  test "should destroy rent_parking" do
    assert_difference('RentParking.count', -1) do
      delete :destroy, id: @rent_parking
    end

    assert_redirected_to rent_parkings_path
  end
end
