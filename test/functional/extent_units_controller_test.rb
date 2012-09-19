require 'test_helper'

class ExtentUnitsControllerTest < ActionController::TestCase
  setup do
    @extent_unit = extent_units(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:extent_units)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create extent_unit" do
    assert_difference('ExtentUnit.count') do
      post :create, extent_unit: { name: @extent_unit.name }
    end

    assert_redirected_to extent_unit_path(assigns(:extent_unit))
  end

  test "should show extent_unit" do
    get :show, id: @extent_unit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @extent_unit
    assert_response :success
  end

  test "should update extent_unit" do
    put :update, id: @extent_unit, extent_unit: { name: @extent_unit.name }
    assert_redirected_to extent_unit_path(assigns(:extent_unit))
  end

  test "should destroy extent_unit" do
    assert_difference('ExtentUnit.count', -1) do
      delete :destroy, id: @extent_unit
    end

    assert_redirected_to extent_units_path
  end
end
