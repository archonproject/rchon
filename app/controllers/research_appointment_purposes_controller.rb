class ResearchAppointmentPurposesController < ApplicationController
  # GET /research_appointment_purposes
  # GET /research_appointment_purposes.json
  def index
    @research_appointment_purposes = ResearchAppointmentPurpose.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @research_appointment_purposes }
    end
  end

  # GET /research_appointment_purposes/1
  # GET /research_appointment_purposes/1.json
  def show
    @research_appointment_purpose = ResearchAppointmentPurpose.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @research_appointment_purpose }
    end
  end

  # GET /research_appointment_purposes/new
  # GET /research_appointment_purposes/new.json
  def new
    @research_appointment_purpose = ResearchAppointmentPurpose.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @research_appointment_purpose }
    end
  end

  # GET /research_appointment_purposes/1/edit
  def edit
    @research_appointment_purpose = ResearchAppointmentPurpose.find(params[:id])
  end

  # POST /research_appointment_purposes
  # POST /research_appointment_purposes.json
  def create
    @research_appointment_purpose = ResearchAppointmentPurpose.new(params[:research_appointment_purpose])

    respond_to do |format|
      if @research_appointment_purpose.save
        format.html { redirect_to @research_appointment_purpose, notice: 'Research appointment purpose was successfully created.' }
        format.json { render json: @research_appointment_purpose, status: :created, location: @research_appointment_purpose }
      else
        format.html { render action: "new" }
        format.json { render json: @research_appointment_purpose.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /research_appointment_purposes/1
  # PUT /research_appointment_purposes/1.json
  def update
    @research_appointment_purpose = ResearchAppointmentPurpose.find(params[:id])

    respond_to do |format|
      if @research_appointment_purpose.update_attributes(params[:research_appointment_purpose])
        format.html { redirect_to @research_appointment_purpose, notice: 'Research appointment purpose was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @research_appointment_purpose.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /research_appointment_purposes/1
  # DELETE /research_appointment_purposes/1.json
  def destroy
    @research_appointment_purpose = ResearchAppointmentPurpose.find(params[:id])
    @research_appointment_purpose.destroy

    respond_to do |format|
      format.html { redirect_to research_appointment_purposes_url }
      format.json { head :no_content }
    end
  end
end
