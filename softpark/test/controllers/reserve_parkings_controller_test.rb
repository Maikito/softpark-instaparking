require 'test_helper'

class ReserveParkingsControllerTest < ActionController::TestCase
  setup do
    @reserve_parking = reserve_parkings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reserve_parkings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reserve_parking" do
    assert_difference('ReserveParking.count') do
      post :create, reserve_parking: { cod_Pay: @reserve_parking.cod_Pay, fec_fin_reserv: @reserve_parking.fec_fin_reserv, fec_ini_reserve: @reserve_parking.fec_ini_reserve, fec_reserve: @reserve_parking.fec_reserve, hor_fin_reserve: @reserve_parking.hor_fin_reserve, hor_ini_reserve: @reserve_parking.hor_ini_reserve, int: @reserve_parking.int, mont_reserve: @reserve_parking.mont_reserve, rent_parking_id: @reserve_parking.rent_parking_id, state: @reserve_parking.state, user_id: @reserve_parking.user_id }
    end

    assert_redirected_to reserve_parking_path(assigns(:reserve_parking))
  end

  test "should show reserve_parking" do
    get :show, id: @reserve_parking
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reserve_parking
    assert_response :success
  end

  test "should update reserve_parking" do
    patch :update, id: @reserve_parking, reserve_parking: { cod_Pay: @reserve_parking.cod_Pay, fec_fin_reserv: @reserve_parking.fec_fin_reserv, fec_ini_reserve: @reserve_parking.fec_ini_reserve, fec_reserve: @reserve_parking.fec_reserve, hor_fin_reserve: @reserve_parking.hor_fin_reserve, hor_ini_reserve: @reserve_parking.hor_ini_reserve, int: @reserve_parking.int, mont_reserve: @reserve_parking.mont_reserve, rent_parking_id: @reserve_parking.rent_parking_id, state: @reserve_parking.state, user_id: @reserve_parking.user_id }
    assert_redirected_to reserve_parking_path(assigns(:reserve_parking))
  end

  test "should destroy reserve_parking" do
    assert_difference('ReserveParking.count', -1) do
      delete :destroy, id: @reserve_parking
    end

    assert_redirected_to reserve_parkings_path
  end
end
