require 'test_helper'

class AccessionsControllerTest < ActionController::TestCase
  setup do
    @accession = accessions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:accessions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create accession" do
    assert_difference('Accession.count') do
      post :create, accession: { accession_date: @accession.accession_date, comments: @accession.comments, donor: @accession.donor, donor_contact_info: @accession.donor_contact_info, donor_notes: @accession.donor_notes, enabled: @accession.enabled, expected_completion_date: @accession.expected_completion_date, identifier: @accession.identifier, inclusive_dates: @accession.inclusive_dates, material_type_id: @accession.material_type_id, physical_description: @accession.physical_description, processing_priority_id: @accession.processing_priority_id, received_extent: @accession.received_extent, received_extent_unit_id: @accession.received_extent_unit_id, scope_content: @accession.scope_content, title: @accession.title, unprocessed_extent: @accession.unprocessed_extent, unprocessed_extent_unit_id: @accession.unprocessed_extent_unit_id }
    end

    assert_redirected_to accession_path(assigns(:accession))
  end

  test "should show accession" do
    get :show, id: @accession
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @accession
    assert_response :success
  end

  test "should update accession" do
    put :update, id: @accession, accession: { accession_date: @accession.accession_date, comments: @accession.comments, donor: @accession.donor, donor_contact_info: @accession.donor_contact_info, donor_notes: @accession.donor_notes, enabled: @accession.enabled, expected_completion_date: @accession.expected_completion_date, identifier: @accession.identifier, inclusive_dates: @accession.inclusive_dates, material_type_id: @accession.material_type_id, physical_description: @accession.physical_description, processing_priority_id: @accession.processing_priority_id, received_extent: @accession.received_extent, received_extent_unit_id: @accession.received_extent_unit_id, scope_content: @accession.scope_content, title: @accession.title, unprocessed_extent: @accession.unprocessed_extent, unprocessed_extent_unit_id: @accession.unprocessed_extent_unit_id }
    assert_redirected_to accession_path(assigns(:accession))
  end

  test "should destroy accession" do
    assert_difference('Accession.count', -1) do
      delete :destroy, id: @accession
    end

    assert_redirected_to accessions_path
  end
end
