require 'test_helper'

class PlayerLeaderRefsControllerTest < ActionController::TestCase
  setup do
    @player_leader_ref = player_leader_refs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:player_leader_refs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create player_leader_ref" do
    assert_difference('PlayerLeaderRef.count') do
      post :create, player_leader_ref: {  }
    end

    assert_redirected_to player_leader_ref_path(assigns(:player_leader_ref))
  end

  test "should show player_leader_ref" do
    get :show, id: @player_leader_ref
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @player_leader_ref
    assert_response :success
  end

  test "should update player_leader_ref" do
    patch :update, id: @player_leader_ref, player_leader_ref: {  }
    assert_redirected_to player_leader_ref_path(assigns(:player_leader_ref))
  end

  test "should destroy player_leader_ref" do
    assert_difference('PlayerLeaderRef.count', -1) do
      delete :destroy, id: @player_leader_ref
    end

    assert_redirected_to player_leader_refs_path
  end
end
