require 'test_helper'

class FavoriteParkingsControllerTest < ActionController::TestCase
  setup do
    @favorite_parking = favorite_parkings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:favorite_parkings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create favorite_parking" do
    assert_difference('FavoriteParking.count') do
      post :create, favorite_parking: { fec_favorite: @favorite_parking.fec_favorite, name_space: @favorite_parking.name_space, rent_parking_id: @favorite_parking.rent_parking_id, user_id: @favorite_parking.user_id }
    end

    assert_redirected_to favorite_parking_path(assigns(:favorite_parking))
  end

  test "should show favorite_parking" do
    get :show, id: @favorite_parking
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @favorite_parking
    assert_response :success
  end

  test "should update favorite_parking" do
    patch :update, id: @favorite_parking, favorite_parking: { fec_favorite: @favorite_parking.fec_favorite, name_space: @favorite_parking.name_space, rent_parking_id: @favorite_parking.rent_parking_id, user_id: @favorite_parking.user_id }
    assert_redirected_to favorite_parking_path(assigns(:favorite_parking))
  end

  test "should destroy favorite_parking" do
    assert_difference('FavoriteParking.count', -1) do
      delete :destroy, id: @favorite_parking
    end

    assert_redirected_to favorite_parkings_path
  end
end
