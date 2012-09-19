require 'test_helper'

class ResearchAppointmentPurposesControllerTest < ActionController::TestCase
  setup do
    @research_appointment_purpose = research_appointment_purposes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:research_appointment_purposes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create research_appointment_purpose" do
    assert_difference('ResearchAppointmentPurpose.count') do
      post :create, research_appointment_purpose: { name: @research_appointment_purpose.name }
    end

    assert_redirected_to research_appointment_purpose_path(assigns(:research_appointment_purpose))
  end

  test "should show research_appointment_purpose" do
    get :show, id: @research_appointment_purpose
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @research_appointment_purpose
    assert_response :success
  end

  test "should update research_appointment_purpose" do
    put :update, id: @research_appointment_purpose, research_appointment_purpose: { name: @research_appointment_purpose.name }
    assert_redirected_to research_appointment_purpose_path(assigns(:research_appointment_purpose))
  end

  test "should destroy research_appointment_purpose" do
    assert_difference('ResearchAppointmentPurpose.count', -1) do
      delete :destroy, id: @research_appointment_purpose
    end

    assert_redirected_to research_appointment_purposes_path
  end
end
