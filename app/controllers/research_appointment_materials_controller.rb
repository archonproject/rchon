class ResearchAppointmentMaterialsController < ApplicationController
  # GET /research_appointment_materials
  # GET /research_appointment_materials.json
  def index
    @research_appointment_materials = ResearchAppointmentMaterial.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @research_appointment_materials }
    end
  end

  # GET /research_appointment_materials/1
  # GET /research_appointment_materials/1.json
  def show
    @research_appointment_material = ResearchAppointmentMaterial.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @research_appointment_material }
    end
  end

  # GET /research_appointment_materials/new
  # GET /research_appointment_materials/new.json
  def new
    @research_appointment_material = ResearchAppointmentMaterial.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @research_appointment_material }
    end
  end

  # GET /research_appointment_materials/1/edit
  def edit
    @research_appointment_material = ResearchAppointmentMaterial.find(params[:id])
  end

  # POST /research_appointment_materials
  # POST /research_appointment_materials.json
  def create
    @research_appointment_material = ResearchAppointmentMaterial.new(params[:research_appointment_material])

    respond_to do |format|
      if @research_appointment_material.save
        format.html { redirect_to @research_appointment_material, notice: 'Research appointment material was successfully created.' }
        format.json { render json: @research_appointment_material, status: :created, location: @research_appointment_material }
      else
        format.html { render action: "new" }
        format.json { render json: @research_appointment_material.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /research_appointment_materials/1
  # PUT /research_appointment_materials/1.json
  def update
    @research_appointment_material = ResearchAppointmentMaterial.find(params[:id])

    respond_to do |format|
      if @research_appointment_material.update_attributes(params[:research_appointment_material])
        format.html { redirect_to @research_appointment_material, notice: 'Research appointment material was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @research_appointment_material.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /research_appointment_materials/1
  # DELETE /research_appointment_materials/1.json
  def destroy
    @research_appointment_material = ResearchAppointmentMaterial.find(params[:id])
    @research_appointment_material.destroy

    respond_to do |format|
      format.html { redirect_to research_appointment_materials_url }
      format.json { head :no_content }
    end
  end
end
