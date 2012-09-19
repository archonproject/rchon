require 'test_helper'

class DigitalContentFilesControllerTest < ActionController::TestCase
  setup do
    @digital_content_file = digital_content_files(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:digital_content_files)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create digital_content_file" do
    assert_difference('DigitalContentFile.count') do
      post :create, digital_content_file: { default_access_level: @digital_content_file.default_access_level, digital_content_id: @digital_content_file.digital_content_id, display_order: @digital_content_file.display_order, title: @digital_content_file.title }
    end

    assert_redirected_to digital_content_file_path(assigns(:digital_content_file))
  end

  test "should show digital_content_file" do
    get :show, id: @digital_content_file
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @digital_content_file
    assert_response :success
  end

  test "should update digital_content_file" do
    put :update, id: @digital_content_file, digital_content_file: { default_access_level: @digital_content_file.default_access_level, digital_content_id: @digital_content_file.digital_content_id, display_order: @digital_content_file.display_order, title: @digital_content_file.title }
    assert_redirected_to digital_content_file_path(assigns(:digital_content_file))
  end

  test "should destroy digital_content_file" do
    assert_difference('DigitalContentFile.count', -1) do
      delete :destroy, id: @digital_content_file
    end

    assert_redirected_to digital_content_files_path
  end
end
