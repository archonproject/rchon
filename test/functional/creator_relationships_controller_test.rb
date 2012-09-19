require 'test_helper'

class CreatorRelationshipsControllerTest < ActionController::TestCase
  setup do
    @creator_relationship = creator_relationships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:creator_relationships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create creator_relationship" do
    assert_difference('CreatorRelationship.count') do
      post :create, creator_relationship: { creator_id: @creator_relationship.creator_id, creator_relationship_type_id: @creator_relationship.creator_relationship_type_id, description: @creator_relationship.description, related_creator_id: @creator_relationship.related_creator_id }
    end

    assert_redirected_to creator_relationship_path(assigns(:creator_relationship))
  end

  test "should show creator_relationship" do
    get :show, id: @creator_relationship
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @creator_relationship
    assert_response :success
  end

  test "should update creator_relationship" do
    put :update, id: @creator_relationship, creator_relationship: { creator_id: @creator_relationship.creator_id, creator_relationship_type_id: @creator_relationship.creator_relationship_type_id, description: @creator_relationship.description, related_creator_id: @creator_relationship.related_creator_id }
    assert_redirected_to creator_relationship_path(assigns(:creator_relationship))
  end

  test "should destroy creator_relationship" do
    assert_difference('CreatorRelationship.count', -1) do
      delete :destroy, id: @creator_relationship
    end

    assert_redirected_to creator_relationships_path
  end
end
