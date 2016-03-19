require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get information" do
    get :information
    assert_response :success
  end

  test "should get question" do
    get :question
    assert_response :success
  end

  test "should get conditional" do
    get :conditional
    assert_response :success
  end

  test "should get contac" do
    get :contac
    assert_response :success
  end

end
