require 'test_helper'

class CreatorSourcesControllerTest < ActionController::TestCase
  setup do
    @creator_source = creator_sources(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:creator_sources)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create creator_source" do
    assert_difference('CreatorSource.count') do
      post :create, creator_source: { citation: @creator_source.citation, creator_source: @creator_source.creator_source, description: @creator_source.description, source_abbreviation: @creator_source.source_abbreviation }
    end

    assert_redirected_to creator_source_path(assigns(:creator_source))
  end

  test "should show creator_source" do
    get :show, id: @creator_source
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @creator_source
    assert_response :success
  end

  test "should update creator_source" do
    put :update, id: @creator_source, creator_source: { citation: @creator_source.citation, creator_source: @creator_source.creator_source, description: @creator_source.description, source_abbreviation: @creator_source.source_abbreviation }
    assert_redirected_to creator_source_path(assigns(:creator_source))
  end

  test "should destroy creator_source" do
    assert_difference('CreatorSource.count', -1) do
      delete :destroy, id: @creator_source
    end

    assert_redirected_to creator_sources_path
  end
end
