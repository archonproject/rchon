class CreatorRelationshipsController < ApplicationController
  # GET /creator_relationships
  # GET /creator_relationships.json
  def index
    @creator_relationships = CreatorRelationship.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @creator_relationships }
    end
  end

  # GET /creator_relationships/1
  # GET /creator_relationships/1.json
  def show
    @creator_relationship = CreatorRelationship.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @creator_relationship }
    end
  end

  # GET /creator_relationships/new
  # GET /creator_relationships/new.json
  def new
    @creator_relationship = CreatorRelationship.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @creator_relationship }
    end
  end

  # GET /creator_relationships/1/edit
  def edit
    @creator_relationship = CreatorRelationship.find(params[:id])
  end

  # POST /creator_relationships
  # POST /creator_relationships.json
  def create
    @creator_relationship = CreatorRelationship.new(params[:creator_relationship])

    respond_to do |format|
      if @creator_relationship.save
        format.html { redirect_to @creator_relationship, notice: 'Creator relationship was successfully created.' }
        format.json { render json: @creator_relationship, status: :created, location: @creator_relationship }
      else
        format.html { render action: "new" }
        format.json { render json: @creator_relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /creator_relationships/1
  # PUT /creator_relationships/1.json
  def update
    @creator_relationship = CreatorRelationship.find(params[:id])

    respond_to do |format|
      if @creator_relationship.update_attributes(params[:creator_relationship])
        format.html { redirect_to @creator_relationship, notice: 'Creator relationship was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @creator_relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /creator_relationships/1
  # DELETE /creator_relationships/1.json
  def destroy
    @creator_relationship = CreatorRelationship.find(params[:id])
    @creator_relationship.destroy

    respond_to do |format|
      format.html { redirect_to creator_relationships_url }
      format.json { head :no_content }
    end
  end
end
