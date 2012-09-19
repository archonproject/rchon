require 'test_helper'

class CollectionLocationEntriesControllerTest < ActionController::TestCase
  setup do
    @collection_location_entry = collection_location_entries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:collection_location_entries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create collection_location_entry" do
    assert_difference('CollectionLocationEntry.count') do
      post :create, collection_location_entry: { collection_id: @collection_location_entry.collection_id, content: @collection_location_entry.content, extent: @collection_location_entry.extent, extent_unit_id: @collection_location_entry.extent_unit_id, location_id: @collection_location_entry.location_id, range_value: @collection_location_entry.range_value, section: @collection_location_entry.section, shelf: @collection_location_entry.shelf }
    end

    assert_redirected_to collection_location_entry_path(assigns(:collection_location_entry))
  end

  test "should show collection_location_entry" do
    get :show, id: @collection_location_entry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @collection_location_entry
    assert_response :success
  end

  test "should update collection_location_entry" do
    put :update, id: @collection_location_entry, collection_location_entry: { collection_id: @collection_location_entry.collection_id, content: @collection_location_entry.content, extent: @collection_location_entry.extent, extent_unit_id: @collection_location_entry.extent_unit_id, location_id: @collection_location_entry.location_id, range_value: @collection_location_entry.range_value, section: @collection_location_entry.section, shelf: @collection_location_entry.shelf }
    assert_redirected_to collection_location_entry_path(assigns(:collection_location_entry))
  end

  test "should destroy collection_location_entry" do
    assert_difference('CollectionLocationEntry.count', -1) do
      delete :destroy, id: @collection_location_entry
    end

    assert_redirected_to collection_location_entries_path
  end
end
