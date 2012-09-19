require 'test_helper'

class ResearchAppointmentMaterialsControllerTest < ActionController::TestCase
  setup do
    @research_appointment_material = research_appointment_materials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:research_appointment_materials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create research_appointment_material" do
    assert_difference('ResearchAppointmentMaterial.count') do
      post :create, research_appointment_material: { collection_content_id: @research_appointment_material.collection_content_id, collection_id: @research_appointment_material.collection_id, research_appointment_id: @research_appointment_material.research_appointment_id, retrieval_time: @research_appointment_material.retrieval_time, retrieval_user_id: @research_appointment_material.retrieval_user_id, return_time: @research_appointment_material.return_time, return_user_id: @research_appointment_material.return_user_id }
    end

    assert_redirected_to research_appointment_material_path(assigns(:research_appointment_material))
  end

  test "should show research_appointment_material" do
    get :show, id: @research_appointment_material
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @research_appointment_material
    assert_response :success
  end

  test "should update research_appointment_material" do
    put :update, id: @research_appointment_material, research_appointment_material: { collection_content_id: @research_appointment_material.collection_content_id, collection_id: @research_appointment_material.collection_id, research_appointment_id: @research_appointment_material.research_appointment_id, retrieval_time: @research_appointment_material.retrieval_time, retrieval_user_id: @research_appointment_material.retrieval_user_id, return_time: @research_appointment_material.return_time, return_user_id: @research_appointment_material.return_user_id }
    assert_redirected_to research_appointment_material_path(assigns(:research_appointment_material))
  end

  test "should destroy research_appointment_material" do
    assert_difference('ResearchAppointmentMaterial.count', -1) do
      delete :destroy, id: @research_appointment_material
    end

    assert_redirected_to research_appointment_materials_path
  end
end
