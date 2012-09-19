class CreatorAccessionRelationshipsController < ApplicationController
  # GET /creator_accession_relationships
  # GET /creator_accession_relationships.json
  def index
    @creator_accession_relationships = CreatorAccessionRelationship.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @creator_accession_relationships }
    end
  end

  # GET /creator_accession_relationships/1
  # GET /creator_accession_relationships/1.json
  def show
    @creator_accession_relationship = CreatorAccessionRelationship.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @creator_accession_relationship }
    end
  end

  # GET /creator_accession_relationships/new
  # GET /creator_accession_relationships/new.json
  def new
    @creator_accession_relationship = CreatorAccessionRelationship.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @creator_accession_relationship }
    end
  end

  # GET /creator_accession_relationships/1/edit
  def edit
    @creator_accession_relationship = CreatorAccessionRelationship.find(params[:id])
  end

  # POST /creator_accession_relationships
  # POST /creator_accession_relationships.json
  def create
    @creator_accession_relationship = CreatorAccessionRelationship.new(params[:creator_accession_relationship])

    respond_to do |format|
      if @creator_accession_relationship.save
        format.html { redirect_to @creator_accession_relationship, notice: 'Creator accession relationship was successfully created.' }
        format.json { render json: @creator_accession_relationship, status: :created, location: @creator_accession_relationship }
      else
        format.html { render action: "new" }
        format.json { render json: @creator_accession_relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /creator_accession_relationships/1
  # PUT /creator_accession_relationships/1.json
  def update
    @creator_accession_relationship = CreatorAccessionRelationship.find(params[:id])

    respond_to do |format|
      if @creator_accession_relationship.update_attributes(params[:creator_accession_relationship])
        format.html { redirect_to @creator_accession_relationship, notice: 'Creator accession relationship was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @creator_accession_relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /creator_accession_relationships/1
  # DELETE /creator_accession_relationships/1.json
  def destroy
    @creator_accession_relationship = CreatorAccessionRelationship.find(params[:id])
    @creator_accession_relationship.destroy

    respond_to do |format|
      format.html { redirect_to creator_accession_relationships_url }
      format.json { head :no_content }
    end
  end
end
