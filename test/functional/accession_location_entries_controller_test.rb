require 'test_helper'

class AccessionLocationEntriesControllerTest < ActionController::TestCase
  setup do
    @accession_location_entry = accession_location_entries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:accession_location_entries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create accession_location_entry" do
    assert_difference('AccessionLocationEntry.count') do
      post :create, accession_location_entry: { accession_id: @accession_location_entry.accession_id, content: @accession_location_entry.content, extent: @accession_location_entry.extent, extent_unit_id: @accession_location_entry.extent_unit_id, location_id: @accession_location_entry.location_id, range_value: @accession_location_entry.range_value, section: @accession_location_entry.section, shelf: @accession_location_entry.shelf }
    end

    assert_redirected_to accession_location_entry_path(assigns(:accession_location_entry))
  end

  test "should show accession_location_entry" do
    get :show, id: @accession_location_entry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @accession_location_entry
    assert_response :success
  end

  test "should update accession_location_entry" do
    put :update, id: @accession_location_entry, accession_location_entry: { accession_id: @accession_location_entry.accession_id, content: @accession_location_entry.content, extent: @accession_location_entry.extent, extent_unit_id: @accession_location_entry.extent_unit_id, location_id: @accession_location_entry.location_id, range_value: @accession_location_entry.range_value, section: @accession_location_entry.section, shelf: @accession_location_entry.shelf }
    assert_redirected_to accession_location_entry_path(assigns(:accession_location_entry))
  end

  test "should destroy accession_location_entry" do
    assert_difference('AccessionLocationEntry.count', -1) do
      delete :destroy, id: @accession_location_entry
    end

    assert_redirected_to accession_location_entries_path
  end
end
