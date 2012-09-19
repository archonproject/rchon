require 'test_helper'

class ResearchAppointmentsControllerTest < ActionController::TestCase
  setup do
    @research_appointment = research_appointments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:research_appointments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create research_appointment" do
    assert_difference('ResearchAppointment.count') do
      post :create, research_appointment: { appointment_purpose_id: @research_appointment.appointment_purpose_id, archivist_comments: @research_appointment.archivist_comments, arrival_time: @research_appointment.arrival_time, departure_time: @research_appointment.departure_time, researcher_comments: @research_appointment.researcher_comments, researcher_id: @research_appointment.researcher_id, submit_time: @research_appointment.submit_time, topic: @research_appointment.topic }
    end

    assert_redirected_to research_appointment_path(assigns(:research_appointment))
  end

  test "should show research_appointment" do
    get :show, id: @research_appointment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @research_appointment
    assert_response :success
  end

  test "should update research_appointment" do
    put :update, id: @research_appointment, research_appointment: { appointment_purpose_id: @research_appointment.appointment_purpose_id, archivist_comments: @research_appointment.archivist_comments, arrival_time: @research_appointment.arrival_time, departure_time: @research_appointment.departure_time, researcher_comments: @research_appointment.researcher_comments, researcher_id: @research_appointment.researcher_id, submit_time: @research_appointment.submit_time, topic: @research_appointment.topic }
    assert_redirected_to research_appointment_path(assigns(:research_appointment))
  end

  test "should destroy research_appointment" do
    assert_difference('ResearchAppointment.count', -1) do
      delete :destroy, id: @research_appointment
    end

    assert_redirected_to research_appointments_path
  end
end
