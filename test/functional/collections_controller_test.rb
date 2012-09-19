require 'test_helper'

class CollectionsControllerTest < ActionController::TestCase
  setup do
    @collection = collections(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:collections)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create collection" do
    assert_difference('Collection.count') do
      post :create, collection: { abstract: @collection.abstract, access_restrictions: @collection.access_restrictions, accrual_info: @collection.accrual_info, acquisition_date: @collection.acquisition_date, acquisition_method: @collection.acquisition_method, acquisition_source: @collection.acquisition_source, alt_extent_statement: @collection.alt_extent_statement, appraisal_info: @collection.appraisal_info, arrangement: @collection.arrangement, biog_hist: @collection.biog_hist, biog_hist_author: @collection.biog_hist_author, classification_id: @collection.classification_id, collection_identifier: @collection.collection_identifier, custodial_history: @collection.custodial_history, descpriptive_rules_id: @collection.descpriptive_rules_id, enabled: @collection.enabled, extent: @collection.extent, extent_unit_id: @collection.extent_unit_id, finding_aid_author: @collection.finding_aid_author, finding_language_id: @collection.finding_language_id, inclusive_dates: @collection.inclusive_dates, material_type_id: @collection.material_type_id, normal_date_begin: @collection.normal_date_begin, normal_date_end: @collection.normal_date_end, orig_copies_note: @collection.orig_copies_note, orig_copies_url: @collection.orig_copies_url, other_note: @collection.other_note, other_url: @collection.other_url, physical_access: @collection.physical_access, predominant_dates: @collection.predominant_dates, preferred_citation: @collection.preferred_citation, processing_info: @collection.processing_info, publication_date: @collection.publication_date, publication_note: @collection.publication_note, related_materials: @collection.related_materials, related_materials_url: @collection.related_materials_url, related_publications: @collection.related_publications, repository_id: @collection.repository_id, revision_history: @collection.revision_history, scope: @collection.scope, separated_materials: @collection.separated_materials, sort_title: @collection.sort_title, technical_access: @collection.technical_access, title: @collection.title, use_restrictions: @collection.use_restrictions }
    end

    assert_redirected_to collection_path(assigns(:collection))
  end

  test "should show collection" do
    get :show, id: @collection
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @collection
    assert_response :success
  end

  test "should update collection" do
    put :update, id: @collection, collection: { abstract: @collection.abstract, access_restrictions: @collection.access_restrictions, accrual_info: @collection.accrual_info, acquisition_date: @collection.acquisition_date, acquisition_method: @collection.acquisition_method, acquisition_source: @collection.acquisition_source, alt_extent_statement: @collection.alt_extent_statement, appraisal_info: @collection.appraisal_info, arrangement: @collection.arrangement, biog_hist: @collection.biog_hist, biog_hist_author: @collection.biog_hist_author, classification_id: @collection.classification_id, collection_identifier: @collection.collection_identifier, custodial_history: @collection.custodial_history, descpriptive_rules_id: @collection.descpriptive_rules_id, enabled: @collection.enabled, extent: @collection.extent, extent_unit_id: @collection.extent_unit_id, finding_aid_author: @collection.finding_aid_author, finding_language_id: @collection.finding_language_id, inclusive_dates: @collection.inclusive_dates, material_type_id: @collection.material_type_id, normal_date_begin: @collection.normal_date_begin, normal_date_end: @collection.normal_date_end, orig_copies_note: @collection.orig_copies_note, orig_copies_url: @collection.orig_copies_url, other_note: @collection.other_note, other_url: @collection.other_url, physical_access: @collection.physical_access, predominant_dates: @collection.predominant_dates, preferred_citation: @collection.preferred_citation, processing_info: @collection.processing_info, publication_date: @collection.publication_date, publication_note: @collection.publication_note, related_materials: @collection.related_materials, related_materials_url: @collection.related_materials_url, related_publications: @collection.related_publications, repository_id: @collection.repository_id, revision_history: @collection.revision_history, scope: @collection.scope, separated_materials: @collection.separated_materials, sort_title: @collection.sort_title, technical_access: @collection.technical_access, title: @collection.title, use_restrictions: @collection.use_restrictions }
    assert_redirected_to collection_path(assigns(:collection))
  end

  test "should destroy collection" do
    assert_difference('Collection.count', -1) do
      delete :destroy, id: @collection
    end

    assert_redirected_to collections_path
  end
end
