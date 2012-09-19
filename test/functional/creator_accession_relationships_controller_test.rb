require 'test_helper'

class CreatorAccessionRelationshipsControllerTest < ActionController::TestCase
  setup do
    @creator_accession_relationship = creator_accession_relationships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:creator_accession_relationships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create creator_accession_relationship" do
    assert_difference('CreatorAccessionRelationship.count') do
      post :create, creator_accession_relationship: { accession_id: @creator_accession_relationship.accession_id, classification_id: @creator_accession_relationship.classification_id, collection_id: @creator_accession_relationship.collection_id, primary_collection: @creator_accession_relationship.primary_collection }
    end

    assert_redirected_to creator_accession_relationship_path(assigns(:creator_accession_relationship))
  end

  test "should show creator_accession_relationship" do
    get :show, id: @creator_accession_relationship
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @creator_accession_relationship
    assert_response :success
  end

  test "should update creator_accession_relationship" do
    put :update, id: @creator_accession_relationship, creator_accession_relationship: { accession_id: @creator_accession_relationship.accession_id, classification_id: @creator_accession_relationship.classification_id, collection_id: @creator_accession_relationship.collection_id, primary_collection: @creator_accession_relationship.primary_collection }
    assert_redirected_to creator_accession_relationship_path(assigns(:creator_accession_relationship))
  end

  test "should destroy creator_accession_relationship" do
    assert_difference('CreatorAccessionRelationship.count', -1) do
      delete :destroy, id: @creator_accession_relationship
    end

    assert_redirected_to creator_accession_relationships_path
  end
end
