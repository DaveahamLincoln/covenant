require 'test_helper'

class PlayerControllerTest < ActionController::TestCase
  test "should get name:string" do
    get :name:string
    assert_response :success
  end

  test "should get rank:integer" do
    get :rank:integer
    assert_response :success
  end

  test "should get rxp:integer" do
    get :rxp:integer
    assert_response :success
  end

  test "should get squad:integer" do
    get :squad:integer
    assert_response :success
  end

end
