class DigitalContentFilesController < ApplicationController
  # GET /digital_content_files
  # GET /digital_content_files.json
  def index
    @digital_content_files = DigitalContentFile.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @digital_content_files }
    end
  end

  # GET /digital_content_files/1
  # GET /digital_content_files/1.json
  def show
    @digital_content_file = DigitalContentFile.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @digital_content_file }
    end
  end

  # GET /digital_content_files/new
  # GET /digital_content_files/new.json
  def new
    @digital_content_file = DigitalContentFile.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @digital_content_file }
    end
  end

  # GET /digital_content_files/1/edit
  def edit
    @digital_content_file = DigitalContentFile.find(params[:id])
  end

  # POST /digital_content_files
  # POST /digital_content_files.json
  def create
    @digital_content_file = DigitalContentFile.new(params[:digital_content_file])

    respond_to do |format|
      if @digital_content_file.save
        format.html { redirect_to @digital_content_file, notice: 'Digital content file was successfully created.' }
        format.json { render json: @digital_content_file, status: :created, location: @digital_content_file }
      else
        format.html { render action: "new" }
        format.json { render json: @digital_content_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /digital_content_files/1
  # PUT /digital_content_files/1.json
  def update
    @digital_content_file = DigitalContentFile.find(params[:id])

    respond_to do |format|
      if @digital_content_file.update_attributes(params[:digital_content_file])
        format.html { redirect_to @digital_content_file, notice: 'Digital content file was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @digital_content_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /digital_content_files/1
  # DELETE /digital_content_files/1.json
  def destroy
    @digital_content_file = DigitalContentFile.find(params[:id])
    @digital_content_file.destroy

    respond_to do |format|
      format.html { redirect_to digital_content_files_url }
      format.json { head :no_content }
    end
  end
end
