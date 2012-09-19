require 'test_helper'

class ProcessingPrioritiesControllerTest < ActionController::TestCase
  setup do
    @processing_priority = processing_priorities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:processing_priorities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create processing_priority" do
    assert_difference('ProcessingPriority.count') do
      post :create, processing_priority: { description: @processing_priority.description, processing_priority: @processing_priority.processing_priority, sort_order: @processing_priority.sort_order }
    end

    assert_redirected_to processing_priority_path(assigns(:processing_priority))
  end

  test "should show processing_priority" do
    get :show, id: @processing_priority
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @processing_priority
    assert_response :success
  end

  test "should update processing_priority" do
    put :update, id: @processing_priority, processing_priority: { description: @processing_priority.description, processing_priority: @processing_priority.processing_priority, sort_order: @processing_priority.sort_order }
    assert_redirected_to processing_priority_path(assigns(:processing_priority))
  end

  test "should destroy processing_priority" do
    assert_difference('ProcessingPriority.count', -1) do
      delete :destroy, id: @processing_priority
    end

    assert_redirected_to processing_priorities_path
  end
end
