require 'test_helper'

class StorymapsControllerTest < ActionController::TestCase
  setup do
    @storymap = storymaps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:storymaps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create storymap" do
    assert_difference('Storymap.count') do
      post :create, storymap: { description: @storymap.description, name: @storymap.name, user_id: @storymap.user_id }
    end

    assert_redirected_to storymap_path(assigns(:storymap))
  end

  test "should show storymap" do
    get :show, id: @storymap
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @storymap
    assert_response :success
  end

  test "should update storymap" do
    patch :update, id: @storymap, storymap: { description: @storymap.description, name: @storymap.name, user_id: @storymap.user_id }
    assert_redirected_to storymap_path(assigns(:storymap))
  end

  test "should destroy storymap" do
    assert_difference('Storymap.count', -1) do
      delete :destroy, id: @storymap
    end

    assert_redirected_to storymaps_path
  end
end
