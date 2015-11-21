require 'test_helper'

class CharactersControllerTest < ActionController::TestCase
  setup do
    @character = characters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:characters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create character" do
    assert_difference('Character.count') do
      post :create, character: { [name: @character.[name, ac: @character.ac, affix: @character.affix, class: @character.class, prefix: @character.prefix, role: @character.role, sigil_1: @character.sigil_1, sigil_2: @character.sigil_2, sigil_3: @character.sigil_3, sigil_4: @character.sigil_4, toughness: @character.toughness }
    end

    assert_redirected_to character_path(assigns(:character))
  end

  test "should show character" do
    get :show, id: @character
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @character
    assert_response :success
  end

  test "should update character" do
    patch :update, id: @character, character: { [name: @character.[name, ac: @character.ac, affix: @character.affix, class: @character.class, prefix: @character.prefix, role: @character.role, sigil_1: @character.sigil_1, sigil_2: @character.sigil_2, sigil_3: @character.sigil_3, sigil_4: @character.sigil_4, toughness: @character.toughness }
    assert_redirected_to character_path(assigns(:character))
  end

  test "should destroy character" do
    assert_difference('Character.count', -1) do
      delete :destroy, id: @character
    end

    assert_redirected_to characters_path
  end
end
