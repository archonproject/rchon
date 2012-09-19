class ExtentUnitsController < ApplicationController
  # GET /extent_units
  # GET /extent_units.json
  def index
    @extent_units = ExtentUnit.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @extent_units }
    end
  end

  # GET /extent_units/1
  # GET /extent_units/1.json
  def show
    @extent_unit = ExtentUnit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @extent_unit }
    end
  end

  # GET /extent_units/new
  # GET /extent_units/new.json
  def new
    @extent_unit = ExtentUnit.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @extent_unit }
    end
  end

  # GET /extent_units/1/edit
  def edit
    @extent_unit = ExtentUnit.find(params[:id])
  end

  # POST /extent_units
  # POST /extent_units.json
  def create
    @extent_unit = ExtentUnit.new(params[:extent_unit])

    respond_to do |format|
      if @extent_unit.save
        format.html { redirect_to @extent_unit, notice: 'Extent unit was successfully created.' }
        format.json { render json: @extent_unit, status: :created, location: @extent_unit }
      else
        format.html { render action: "new" }
        format.json { render json: @extent_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /extent_units/1
  # PUT /extent_units/1.json
  def update
    @extent_unit = ExtentUnit.find(params[:id])

    respond_to do |format|
      if @extent_unit.update_attributes(params[:extent_unit])
        format.html { redirect_to @extent_unit, notice: 'Extent unit was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @extent_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /extent_units/1
  # DELETE /extent_units/1.json
  def destroy
    @extent_unit = ExtentUnit.find(params[:id])
    @extent_unit.destroy

    respond_to do |format|
      format.html { redirect_to extent_units_url }
      format.json { head :no_content }
    end
  end
end
