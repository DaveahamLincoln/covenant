require 'test_helper'

class AffixesControllerTest < ActionController::TestCase
  setup do
    @affix = affixes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:affixes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create affix" do
    assert_difference('Affix.count') do
      post :create, affix: { description: @affix.description, name: @affix.name }
    end

    assert_redirected_to affix_path(assigns(:affix))
  end

  test "should show affix" do
    get :show, id: @affix
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @affix
    assert_response :success
  end

  test "should update affix" do
    patch :update, id: @affix, affix: { description: @affix.description, name: @affix.name }
    assert_redirected_to affix_path(assigns(:affix))
  end

  test "should destroy affix" do
    assert_difference('Affix.count', -1) do
      delete :destroy, id: @affix
    end

    assert_redirected_to affixes_path
  end
end
