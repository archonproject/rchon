require 'test_helper'

class CreatorsControllerTest < ActionController::TestCase
  setup do
    @creator = creators(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:creators)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create creator" do
    assert_difference('Creator.count') do
      post :create, creator: { biog_hist: @creator.biog_hist, biog_hist_author: @creator.biog_hist_author, creator_source_id: @creator.creator_source_id, creator_type_id: @creator.creator_type_id, dates: @creator.dates, identifier: @creator.identifier, language_id: @creator.language_id, lcnaf_compliant: @creator.lcnaf_compliant, lcnaf_dates: @creator.lcnaf_dates, name: @creator.name, name_fuller_Form: @creator.name_fuller_Form, name_variants: @creator.name_variants, respository_id: @creator.respository_id, script_id: @creator.script_id, sources: @creator.sources }
    end

    assert_redirected_to creator_path(assigns(:creator))
  end

  test "should show creator" do
    get :show, id: @creator
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @creator
    assert_response :success
  end

  test "should update creator" do
    put :update, id: @creator, creator: { biog_hist: @creator.biog_hist, biog_hist_author: @creator.biog_hist_author, creator_source_id: @creator.creator_source_id, creator_type_id: @creator.creator_type_id, dates: @creator.dates, identifier: @creator.identifier, language_id: @creator.language_id, lcnaf_compliant: @creator.lcnaf_compliant, lcnaf_dates: @creator.lcnaf_dates, name: @creator.name, name_fuller_Form: @creator.name_fuller_Form, name_variants: @creator.name_variants, respository_id: @creator.respository_id, script_id: @creator.script_id, sources: @creator.sources }
    assert_redirected_to creator_path(assigns(:creator))
  end

  test "should destroy creator" do
    assert_difference('Creator.count', -1) do
      delete :destroy, id: @creator
    end

    assert_redirected_to creators_path
  end
end
