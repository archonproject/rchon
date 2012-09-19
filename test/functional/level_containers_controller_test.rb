require 'test_helper'

class LevelContainersControllerTest < ActionController::TestCase
  setup do
    @level_container = level_containers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:level_containers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create level_container" do
    assert_difference('LevelContainer.count') do
      post :create, level_container: { ead_level: @level_container.ead_level, global_numbering: @level_container.global_numbering, intellectual_level: @level_container.intellectual_level, name: @level_container.name, physical_container: @level_container.physical_container, primary_ead_level: @level_container.primary_ead_level }
    end

    assert_redirected_to level_container_path(assigns(:level_container))
  end

  test "should show level_container" do
    get :show, id: @level_container
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @level_container
    assert_response :success
  end

  test "should update level_container" do
    put :update, id: @level_container, level_container: { ead_level: @level_container.ead_level, global_numbering: @level_container.global_numbering, intellectual_level: @level_container.intellectual_level, name: @level_container.name, physical_container: @level_container.physical_container, primary_ead_level: @level_container.primary_ead_level }
    assert_redirected_to level_container_path(assigns(:level_container))
  end

  test "should destroy level_container" do
    assert_difference('LevelContainer.count', -1) do
      delete :destroy, id: @level_container
    end

    assert_redirected_to level_containers_path
  end
end
