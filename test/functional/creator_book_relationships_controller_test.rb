require 'test_helper'

class CreatorBookRelationshipsControllerTest < ActionController::TestCase
  setup do
    @creator_book_relationship = creator_book_relationships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:creator_book_relationships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create creator_book_relationship" do
    assert_difference('CreatorBookRelationship.count') do
      post :create, creator_book_relationship: { book_id: @creator_book_relationship.book_id, creator_id: @creator_book_relationship.creator_id, primary_creator: @creator_book_relationship.primary_creator }
    end

    assert_redirected_to creator_book_relationship_path(assigns(:creator_book_relationship))
  end

  test "should show creator_book_relationship" do
    get :show, id: @creator_book_relationship
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @creator_book_relationship
    assert_response :success
  end

  test "should update creator_book_relationship" do
    put :update, id: @creator_book_relationship, creator_book_relationship: { book_id: @creator_book_relationship.book_id, creator_id: @creator_book_relationship.creator_id, primary_creator: @creator_book_relationship.primary_creator }
    assert_redirected_to creator_book_relationship_path(assigns(:creator_book_relationship))
  end

  test "should destroy creator_book_relationship" do
    assert_difference('CreatorBookRelationship.count', -1) do
      delete :destroy, id: @creator_book_relationship
    end

    assert_redirected_to creator_book_relationships_path
  end
end
