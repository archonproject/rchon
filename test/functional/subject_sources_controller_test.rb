require 'test_helper'

class SubjectSourcesControllerTest < ActionController::TestCase
  setup do
    @subject_source = subject_sources(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subject_sources)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subject_source" do
    assert_difference('SubjectSource.count') do
      post :create, subject_source: { ead_source: @subject_source.ead_source, subject_source: @subject_source.subject_source }
    end

    assert_redirected_to subject_source_path(assigns(:subject_source))
  end

  test "should show subject_source" do
    get :show, id: @subject_source
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @subject_source
    assert_response :success
  end

  test "should update subject_source" do
    put :update, id: @subject_source, subject_source: { ead_source: @subject_source.ead_source, subject_source: @subject_source.subject_source }
    assert_redirected_to subject_source_path(assigns(:subject_source))
  end

  test "should destroy subject_source" do
    assert_difference('SubjectSource.count', -1) do
      delete :destroy, id: @subject_source
    end

    assert_redirected_to subject_sources_path
  end
end
