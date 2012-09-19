require 'test_helper'

class DigitalContentCreatorRelationshipsControllerTest < ActionController::TestCase
  setup do
    @digital_content_creator_relationship = digital_content_creator_relationships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:digital_content_creator_relationships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create digital_content_creator_relationship" do
    assert_difference('DigitalContentCreatorRelationship.count') do
      post :create, digital_content_creator_relationship: { creator_id: @digital_content_creator_relationship.creator_id, digital_content_id: @digital_content_creator_relationship.digital_content_id, primary_creator: @digital_content_creator_relationship.primary_creator }
    end

    assert_redirected_to digital_content_creator_relationship_path(assigns(:digital_content_creator_relationship))
  end

  test "should show digital_content_creator_relationship" do
    get :show, id: @digital_content_creator_relationship
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @digital_content_creator_relationship
    assert_response :success
  end

  test "should update digital_content_creator_relationship" do
    put :update, id: @digital_content_creator_relationship, digital_content_creator_relationship: { creator_id: @digital_content_creator_relationship.creator_id, digital_content_id: @digital_content_creator_relationship.digital_content_id, primary_creator: @digital_content_creator_relationship.primary_creator }
    assert_redirected_to digital_content_creator_relationship_path(assigns(:digital_content_creator_relationship))
  end

  test "should destroy digital_content_creator_relationship" do
    assert_difference('DigitalContentCreatorRelationship.count', -1) do
      delete :destroy, id: @digital_content_creator_relationship
    end

    assert_redirected_to digital_content_creator_relationships_path
  end
end
