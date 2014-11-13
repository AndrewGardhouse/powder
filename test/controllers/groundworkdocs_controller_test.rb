require 'test_helper'

class GroundworkdocsControllerTest < ActionController::TestCase
  test "should get animations" do
    get :animations
    assert_response :success
  end

  test "should get boxes" do
    get :boxes
    assert_response :success
  end

  test "should get breakpoints" do
    get :breakpoints
    assert_response :success
  end

  test "should get buttons" do
    get :buttons
    assert_response :success
  end

  test "should get forms" do
    get :forms
    assert_response :success
  end

  test "should get grid" do
    get :grid
    assert_response :success
  end

  test "should get helpers" do
    get :helpers
    assert_response :success
  end

  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get icons" do
    get :icons
    assert_response :success
  end

  test "should get layout_a" do
    get :layout_a
    assert_response :success
  end

  test "should get layout_b" do
    get :layout_b
    assert_response :success
  end

  test "should get layout_c" do
    get :layout_c
    assert_response :success
  end

  test "should get media_queries" do
    get :media_queries
    assert_response :success
  end

  test "should get messages" do
    get :messages
    assert_response :success
  end

  test "should get navigation" do
    get :navigation
    assert_response :success
  end

  test "should get placeholder_text" do
    get :placeholder_text
    assert_response :success
  end

  test "should get responsive_text" do
    get :responsive_text
    assert_response :success
  end

  test "should get tables" do
    get :tables
    assert_response :success
  end

  test "should get tabs" do
    get :tabs
    assert_response :success
  end

  test "should get typography" do
    get :typography
    assert_response :success
  end

end
