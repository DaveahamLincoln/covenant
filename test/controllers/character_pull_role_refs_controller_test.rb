require 'test_helper'

class CharacterPullRoleRefsControllerTest < ActionController::TestCase
  setup do
    @character_pull_role_ref = character_pull_role_refs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:character_pull_role_refs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create character_pull_role_ref" do
    assert_difference('CharacterPullRoleRef.count') do
      post :create, character_pull_role_ref: { character_id: @character_pull_role_ref.character_id, pull_role_id: @character_pull_role_ref.pull_role_id }
    end

    assert_redirected_to character_pull_role_ref_path(assigns(:character_pull_role_ref))
  end

  test "should show character_pull_role_ref" do
    get :show, id: @character_pull_role_ref
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @character_pull_role_ref
    assert_response :success
  end

  test "should update character_pull_role_ref" do
    patch :update, id: @character_pull_role_ref, character_pull_role_ref: { character_id: @character_pull_role_ref.character_id, pull_role_id: @character_pull_role_ref.pull_role_id }
    assert_redirected_to character_pull_role_ref_path(assigns(:character_pull_role_ref))
  end

  test "should destroy character_pull_role_ref" do
    assert_difference('CharacterPullRoleRef.count', -1) do
      delete :destroy, id: @character_pull_role_ref
    end

    assert_redirected_to character_pull_role_refs_path
  end
end
