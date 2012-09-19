class DigitalContentCreatorRelationshipsController < ApplicationController
  # GET /digital_content_creator_relationships
  # GET /digital_content_creator_relationships.json
  def index
    @digital_content_creator_relationships = DigitalContentCreatorRelationship.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @digital_content_creator_relationships }
    end
  end

  # GET /digital_content_creator_relationships/1
  # GET /digital_content_creator_relationships/1.json
  def show
    @digital_content_creator_relationship = DigitalContentCreatorRelationship.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @digital_content_creator_relationship }
    end
  end

  # GET /digital_content_creator_relationships/new
  # GET /digital_content_creator_relationships/new.json
  def new
    @digital_content_creator_relationship = DigitalContentCreatorRelationship.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @digital_content_creator_relationship }
    end
  end

  # GET /digital_content_creator_relationships/1/edit
  def edit
    @digital_content_creator_relationship = DigitalContentCreatorRelationship.find(params[:id])
  end

  # POST /digital_content_creator_relationships
  # POST /digital_content_creator_relationships.json
  def create
    @digital_content_creator_relationship = DigitalContentCreatorRelationship.new(params[:digital_content_creator_relationship])

    respond_to do |format|
      if @digital_content_creator_relationship.save
        format.html { redirect_to @digital_content_creator_relationship, notice: 'Digital content creator relationship was successfully created.' }
        format.json { render json: @digital_content_creator_relationship, status: :created, location: @digital_content_creator_relationship }
      else
        format.html { render action: "new" }
        format.json { render json: @digital_content_creator_relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /digital_content_creator_relationships/1
  # PUT /digital_content_creator_relationships/1.json
  def update
    @digital_content_creator_relationship = DigitalContentCreatorRelationship.find(params[:id])

    respond_to do |format|
      if @digital_content_creator_relationship.update_attributes(params[:digital_content_creator_relationship])
        format.html { redirect_to @digital_content_creator_relationship, notice: 'Digital content creator relationship was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @digital_content_creator_relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /digital_content_creator_relationships/1
  # DELETE /digital_content_creator_relationships/1.json
  def destroy
    @digital_content_creator_relationship = DigitalContentCreatorRelationship.find(params[:id])
    @digital_content_creator_relationship.destroy

    respond_to do |format|
      format.html { redirect_to digital_content_creator_relationships_url }
      format.json { head :no_content }
    end
  end
end
