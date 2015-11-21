require 'test_helper'

class CclassesControllerTest < ActionController::TestCase
  setup do
    @cclass = cclasses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cclasses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cclass" do
    assert_difference('Cclass.count') do
      post :create, cclass: { description: @cclass.description, name: @cclass.name }
    end

    assert_redirected_to cclass_path(assigns(:cclass))
  end

  test "should show cclass" do
    get :show, id: @cclass
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cclass
    assert_response :success
  end

  test "should update cclass" do
    patch :update, id: @cclass, cclass: { description: @cclass.description, name: @cclass.name }
    assert_redirected_to cclass_path(assigns(:cclass))
  end

  test "should destroy cclass" do
    assert_difference('Cclass.count', -1) do
      delete :destroy, id: @cclass
    end

    assert_redirected_to cclasses_path
  end
end
