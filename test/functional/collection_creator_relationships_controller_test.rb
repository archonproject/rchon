require 'test_helper'

class CollectionCreatorRelationshipsControllerTest < ActionController::TestCase
  setup do
    @collection_creator_relationship = collection_creator_relationships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:collection_creator_relationships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create collection_creator_relationship" do
    assert_difference('CollectionCreatorRelationship.count') do
      post :create, collection_creator_relationship: { collection_id: @collection_creator_relationship.collection_id, creator_id: @collection_creator_relationship.creator_id, primary_creator: @collection_creator_relationship.primary_creator }
    end

    assert_redirected_to collection_creator_relationship_path(assigns(:collection_creator_relationship))
  end

  test "should show collection_creator_relationship" do
    get :show, id: @collection_creator_relationship
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @collection_creator_relationship
    assert_response :success
  end

  test "should update collection_creator_relationship" do
    put :update, id: @collection_creator_relationship, collection_creator_relationship: { collection_id: @collection_creator_relationship.collection_id, creator_id: @collection_creator_relationship.creator_id, primary_creator: @collection_creator_relationship.primary_creator }
    assert_redirected_to collection_creator_relationship_path(assigns(:collection_creator_relationship))
  end

  test "should destroy collection_creator_relationship" do
    assert_difference('CollectionCreatorRelationship.count', -1) do
      delete :destroy, id: @collection_creator_relationship
    end

    assert_redirected_to collection_creator_relationships_path
  end
end
