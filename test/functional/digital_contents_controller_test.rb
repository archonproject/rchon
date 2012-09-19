require 'test_helper'

class DigitalContentsControllerTest < ActionController::TestCase
  setup do
    @digital_content = digital_contents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:digital_contents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create digital_content" do
    assert_difference('DigitalContent.count') do
      post :create, digital_content: { browsable: @digital_content.browsable, collection_content_id: @digital_content.collection_content_id, collection_id: @digital_content.collection_id, content_url: @digital_content.content_url, contributor: @digital_content.contributor, date: @digital_content.date, hyperlink_url: @digital_content.hyperlink_url, identifier: @digital_content.identifier, physical_description: @digital_content.physical_description, publisher: @digital_content.publisher, rights_statement: @digital_content.rights_statement, scope: @digital_content.scope, title: @digital_content.title }
    end

    assert_redirected_to digital_content_path(assigns(:digital_content))
  end

  test "should show digital_content" do
    get :show, id: @digital_content
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @digital_content
    assert_response :success
  end

  test "should update digital_content" do
    put :update, id: @digital_content, digital_content: { browsable: @digital_content.browsable, collection_content_id: @digital_content.collection_content_id, collection_id: @digital_content.collection_id, content_url: @digital_content.content_url, contributor: @digital_content.contributor, date: @digital_content.date, hyperlink_url: @digital_content.hyperlink_url, identifier: @digital_content.identifier, physical_description: @digital_content.physical_description, publisher: @digital_content.publisher, rights_statement: @digital_content.rights_statement, scope: @digital_content.scope, title: @digital_content.title }
    assert_redirected_to digital_content_path(assigns(:digital_content))
  end

  test "should destroy digital_content" do
    assert_difference('DigitalContent.count', -1) do
      delete :destroy, id: @digital_content
    end

    assert_redirected_to digital_contents_path
  end
end
