require 'test_helper'

class CarsControllerTest < ActionController::TestCase
  test "should get simulate" do
    get :simulate
    assert_response :success
  end

  test "should get accelerate" do
    get :accelerate
    assert_response :success
  end

  test "should get brake" do
    get :brake
    assert_response :success
  end

end
