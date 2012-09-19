class CollectionCreatorRelationshipsController < ApplicationController
  # GET /collection_creator_relationships
  # GET /collection_creator_relationships.json
  def index
    @collection_creator_relationships = CollectionCreatorRelationship.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @collection_creator_relationships }
    end
  end

  # GET /collection_creator_relationships/1
  # GET /collection_creator_relationships/1.json
  def show
    @collection_creator_relationship = CollectionCreatorRelationship.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @collection_creator_relationship }
    end
  end

  # GET /collection_creator_relationships/new
  # GET /collection_creator_relationships/new.json
  def new
    @collection_creator_relationship = CollectionCreatorRelationship.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @collection_creator_relationship }
    end
  end

  # GET /collection_creator_relationships/1/edit
  def edit
    @collection_creator_relationship = CollectionCreatorRelationship.find(params[:id])
  end

  # POST /collection_creator_relationships
  # POST /collection_creator_relationships.json
  def create
    @collection_creator_relationship = CollectionCreatorRelationship.new(params[:collection_creator_relationship])

    respond_to do |format|
      if @collection_creator_relationship.save
        format.html { redirect_to @collection_creator_relationship, notice: 'Collection creator relationship was successfully created.' }
        format.json { render json: @collection_creator_relationship, status: :created, location: @collection_creator_relationship }
      else
        format.html { render action: "new" }
        format.json { render json: @collection_creator_relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /collection_creator_relationships/1
  # PUT /collection_creator_relationships/1.json
  def update
    @collection_creator_relationship = CollectionCreatorRelationship.find(params[:id])

    respond_to do |format|
      if @collection_creator_relationship.update_attributes(params[:collection_creator_relationship])
        format.html { redirect_to @collection_creator_relationship, notice: 'Collection creator relationship was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @collection_creator_relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /collection_creator_relationships/1
  # DELETE /collection_creator_relationships/1.json
  def destroy
    @collection_creator_relationship = CollectionCreatorRelationship.find(params[:id])
    @collection_creator_relationship.destroy

    respond_to do |format|
      format.html { redirect_to collection_creator_relationships_url }
      format.json { head :no_content }
    end
  end
end
