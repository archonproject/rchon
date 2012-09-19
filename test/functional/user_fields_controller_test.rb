require 'test_helper'

class UserFieldsControllerTest < ActionController::TestCase
  setup do
    @user_field = user_fields(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_fields)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_field" do
    assert_difference('UserField.count') do
      post :create, user_field: { collection_content_id: @user_field.collection_content_id, ead_element_id: @user_field.ead_element_id, title: @user_field.title, value: @user_field.value }
    end

    assert_redirected_to user_field_path(assigns(:user_field))
  end

  test "should show user_field" do
    get :show, id: @user_field
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_field
    assert_response :success
  end

  test "should update user_field" do
    put :update, id: @user_field, user_field: { collection_content_id: @user_field.collection_content_id, ead_element_id: @user_field.ead_element_id, title: @user_field.title, value: @user_field.value }
    assert_redirected_to user_field_path(assigns(:user_field))
  end

  test "should destroy user_field" do
    assert_difference('UserField.count', -1) do
      delete :destroy, id: @user_field
    end

    assert_redirected_to user_fields_path
  end
end
