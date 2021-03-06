require 'test_helper'

class PullsControllerTest < ActionController::TestCase
  setup do
    @pull = pulls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pulls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pull" do
    assert_difference('Pull.count') do
      post :create, pull: { string: @pull.string, string: @pull.string }
    end

    assert_redirected_to pull_path(assigns(:pull))
  end

  test "should show pull" do
    get :show, id: @pull
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pull
    assert_response :success
  end

  test "should update pull" do
    patch :update, id: @pull, pull: { string: @pull.string, string: @pull.string }
    assert_redirected_to pull_path(assigns(:pull))
  end

  test "should destroy pull" do
    assert_difference('Pull.count', -1) do
      delete :destroy, id: @pull
    end

    assert_redirected_to pulls_path
  end
end
