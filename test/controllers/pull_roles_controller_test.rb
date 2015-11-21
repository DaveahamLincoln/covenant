require 'test_helper'

class PullRolesControllerTest < ActionController::TestCase
  setup do
    @pull_role = pull_roles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pull_roles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pull_role" do
    assert_difference('PullRole.count') do
      post :create, pull_role: { string: @pull_role.string, string: @pull_role.string }
    end

    assert_redirected_to pull_role_path(assigns(:pull_role))
  end

  test "should show pull_role" do
    get :show, id: @pull_role
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pull_role
    assert_response :success
  end

  test "should update pull_role" do
    patch :update, id: @pull_role, pull_role: { string: @pull_role.string, string: @pull_role.string }
    assert_redirected_to pull_role_path(assigns(:pull_role))
  end

  test "should destroy pull_role" do
    assert_difference('PullRole.count', -1) do
      delete :destroy, id: @pull_role
    end

    assert_redirected_to pull_roles_path
  end
end
