require 'test_helper'

class EncounterCharacterRefsControllerTest < ActionController::TestCase
  setup do
    @encounter_character_ref = encounter_character_refs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:encounter_character_refs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create encounter_character_ref" do
    assert_difference('EncounterCharacterRef.count') do
      post :create, encounter_character_ref: { character_id: @encounter_character_ref.character_id, encounter_id: @encounter_character_ref.encounter_id }
    end

    assert_redirected_to encounter_character_ref_path(assigns(:encounter_character_ref))
  end

  test "should show encounter_character_ref" do
    get :show, id: @encounter_character_ref
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @encounter_character_ref
    assert_response :success
  end

  test "should update encounter_character_ref" do
    patch :update, id: @encounter_character_ref, encounter_character_ref: { character_id: @encounter_character_ref.character_id, encounter_id: @encounter_character_ref.encounter_id }
    assert_redirected_to encounter_character_ref_path(assigns(:encounter_character_ref))
  end

  test "should destroy encounter_character_ref" do
    assert_difference('EncounterCharacterRef.count', -1) do
      delete :destroy, id: @encounter_character_ref
    end

    assert_redirected_to encounter_character_refs_path
  end
end
