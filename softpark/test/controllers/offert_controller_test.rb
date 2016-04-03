require 'test_helper'

class OffertControllerTest < ActionController::TestCase
  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get list" do
    get :list
    assert_response :success
  end

  test "should get reservation" do
    get :reservation
    assert_response :success
  end

end
