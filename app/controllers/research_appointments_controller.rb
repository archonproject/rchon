class ResearchAppointmentsController < ApplicationController
  # GET /research_appointments
  # GET /research_appointments.json
  def index
    @research_appointments = ResearchAppointment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @research_appointments }
    end
  end

  # GET /research_appointments/1
  # GET /research_appointments/1.json
  def show
    @research_appointment = ResearchAppointment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @research_appointment }
    end
  end

  # GET /research_appointments/new
  # GET /research_appointments/new.json
  def new
    @research_appointment = ResearchAppointment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @research_appointment }
    end
  end

  # GET /research_appointments/1/edit
  def edit
    @research_appointment = ResearchAppointment.find(params[:id])
  end

  # POST /research_appointments
  # POST /research_appointments.json
  def create
    @research_appointment = ResearchAppointment.new(params[:research_appointment])

    respond_to do |format|
      if @research_appointment.save
        format.html { redirect_to @research_appointment, notice: 'Research appointment was successfully created.' }
        format.json { render json: @research_appointment, status: :created, location: @research_appointment }
      else
        format.html { render action: "new" }
        format.json { render json: @research_appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /research_appointments/1
  # PUT /research_appointments/1.json
  def update
    @research_appointment = ResearchAppointment.find(params[:id])

    respond_to do |format|
      if @research_appointment.update_attributes(params[:research_appointment])
        format.html { redirect_to @research_appointment, notice: 'Research appointment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @research_appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /research_appointments/1
  # DELETE /research_appointments/1.json
  def destroy
    @research_appointment = ResearchAppointment.find(params[:id])
    @research_appointment.destroy

    respond_to do |format|
      format.html { redirect_to research_appointments_url }
      format.json { head :no_content }
    end
  end
end
