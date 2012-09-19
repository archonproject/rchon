class DigitalContentsController < ApplicationController
  # GET /digital_contents
  # GET /digital_contents.json
  def index
    @digital_contents = DigitalContent.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @digital_contents }
    end
  end

  # GET /digital_contents/1
  # GET /digital_contents/1.json
  def show
    @digital_content = DigitalContent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @digital_content }
    end
  end

  # GET /digital_contents/new
  # GET /digital_contents/new.json
  def new
    @digital_content = DigitalContent.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @digital_content }
    end
  end

  # GET /digital_contents/1/edit
  def edit
    @digital_content = DigitalContent.find(params[:id])
  end

  # POST /digital_contents
  # POST /digital_contents.json
  def create
    @digital_content = DigitalContent.new(params[:digital_content])

    respond_to do |format|
      if @digital_content.save
        format.html { redirect_to @digital_content, notice: 'Digital content was successfully created.' }
        format.json { render json: @digital_content, status: :created, location: @digital_content }
      else
        format.html { render action: "new" }
        format.json { render json: @digital_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /digital_contents/1
  # PUT /digital_contents/1.json
  def update
    @digital_content = DigitalContent.find(params[:id])

    respond_to do |format|
      if @digital_content.update_attributes(params[:digital_content])
        format.html { redirect_to @digital_content, notice: 'Digital content was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @digital_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /digital_contents/1
  # DELETE /digital_contents/1.json
  def destroy
    @digital_content = DigitalContent.find(params[:id])
    @digital_content.destroy

    respond_to do |format|
      format.html { redirect_to digital_contents_url }
      format.json { head :no_content }
    end
  end
end
