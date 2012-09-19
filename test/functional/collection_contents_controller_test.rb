require 'test_helper'

class CollectionContentsControllerTest < ActionController::TestCase
  setup do
    @collection_content = collection_contents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:collection_contents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create collection_content" do
    assert_difference('CollectionContent.count') do
      post :create, collection_content: { collection_id: @collection_content.collection_id, contains_content: @collection_content.contains_content, date: @collection_content.date, description: @collection_content.description, enabled: @collection_content.enabled, level_container_id: @collection_content.level_container_id, level_container_identifier: @collection_content.level_container_identifier, parent_id: @collection_content.parent_id, private_title: @collection_content.private_title, root_content_id: @collection_content.root_content_id, sort_order: @collection_content.sort_order, title: @collection_content.title }
    end

    assert_redirected_to collection_content_path(assigns(:collection_content))
  end

  test "should show collection_content" do
    get :show, id: @collection_content
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @collection_content
    assert_response :success
  end

  test "should update collection_content" do
    put :update, id: @collection_content, collection_content: { collection_id: @collection_content.collection_id, contains_content: @collection_content.contains_content, date: @collection_content.date, description: @collection_content.description, enabled: @collection_content.enabled, level_container_id: @collection_content.level_container_id, level_container_identifier: @collection_content.level_container_identifier, parent_id: @collection_content.parent_id, private_title: @collection_content.private_title, root_content_id: @collection_content.root_content_id, sort_order: @collection_content.sort_order, title: @collection_content.title }
    assert_redirected_to collection_content_path(assigns(:collection_content))
  end

  test "should destroy collection_content" do
    assert_difference('CollectionContent.count', -1) do
      delete :destroy, id: @collection_content
    end

    assert_redirected_to collection_contents_path
  end
end
