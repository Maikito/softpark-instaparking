require 'test_helper'

class TrasactionControllerTest < ActionController::TestCase
  test "should get list" do
    get :list
    assert_response :success
  end

  test "should get histori" do
    get :histori
    assert_response :success
  end

  test "should get favorite" do
    get :favorite
    assert_response :success
  end

  test "should get detail" do
    get :detail
    assert_response :success
  end

  test "should get paiment" do
    get :paiment
    assert_response :success
  end

  test "should get confirmation" do
    get :confirmation
    assert_response :success
  end

end
