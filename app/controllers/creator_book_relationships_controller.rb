class CreatorBookRelationshipsController < ApplicationController
  # GET /creator_book_relationships
  # GET /creator_book_relationships.json
  def index
    @creator_book_relationships = CreatorBookRelationship.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @creator_book_relationships }
    end
  end

  # GET /creator_book_relationships/1
  # GET /creator_book_relationships/1.json
  def show
    @creator_book_relationship = CreatorBookRelationship.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @creator_book_relationship }
    end
  end

  # GET /creator_book_relationships/new
  # GET /creator_book_relationships/new.json
  def new
    @creator_book_relationship = CreatorBookRelationship.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @creator_book_relationship }
    end
  end

  # GET /creator_book_relationships/1/edit
  def edit
    @creator_book_relationship = CreatorBookRelationship.find(params[:id])
  end

  # POST /creator_book_relationships
  # POST /creator_book_relationships.json
  def create
    @creator_book_relationship = CreatorBookRelationship.new(params[:creator_book_relationship])

    respond_to do |format|
      if @creator_book_relationship.save
        format.html { redirect_to @creator_book_relationship, notice: 'Creator book relationship was successfully created.' }
        format.json { render json: @creator_book_relationship, status: :created, location: @creator_book_relationship }
      else
        format.html { render action: "new" }
        format.json { render json: @creator_book_relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /creator_book_relationships/1
  # PUT /creator_book_relationships/1.json
  def update
    @creator_book_relationship = CreatorBookRelationship.find(params[:id])

    respond_to do |format|
      if @creator_book_relationship.update_attributes(params[:creator_book_relationship])
        format.html { redirect_to @creator_book_relationship, notice: 'Creator book relationship was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @creator_book_relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /creator_book_relationships/1
  # DELETE /creator_book_relationships/1.json
  def destroy
    @creator_book_relationship = CreatorBookRelationship.find(params[:id])
    @creator_book_relationship.destroy

    respond_to do |format|
      format.html { redirect_to creator_book_relationships_url }
      format.json { head :no_content }
    end
  end
end
