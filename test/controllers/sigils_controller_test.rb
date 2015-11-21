require 'test_helper'

class SigilsControllerTest < ActionController::TestCase
  setup do
    @sigil = sigils(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sigils)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sigil" do
    assert_difference('Sigil.count') do
      post :create, sigil: { description: @sigil.description, name: @sigil.name }
    end

    assert_redirected_to sigil_path(assigns(:sigil))
  end

  test "should show sigil" do
    get :show, id: @sigil
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sigil
    assert_response :success
  end

  test "should update sigil" do
    patch :update, id: @sigil, sigil: { description: @sigil.description, name: @sigil.name }
    assert_redirected_to sigil_path(assigns(:sigil))
  end

  test "should destroy sigil" do
    assert_difference('Sigil.count', -1) do
      delete :destroy, id: @sigil
    end

    assert_redirected_to sigils_path
  end
end
