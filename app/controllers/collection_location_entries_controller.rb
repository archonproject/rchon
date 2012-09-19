class CollectionLocationEntriesController < ApplicationController
  # GET /collection_location_entries
  # GET /collection_location_entries.json
  def index
    @collection_location_entries = CollectionLocationEntry.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @collection_location_entries }
    end
  end

  # GET /collection_location_entries/1
  # GET /collection_location_entries/1.json
  def show
    @collection_location_entry = CollectionLocationEntry.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @collection_location_entry }
    end
  end

  # GET /collection_location_entries/new
  # GET /collection_location_entries/new.json
  def new
    @collection_location_entry = CollectionLocationEntry.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @collection_location_entry }
    end
  end

  # GET /collection_location_entries/1/edit
  def edit
    @collection_location_entry = CollectionLocationEntry.find(params[:id])
  end

  # POST /collection_location_entries
  # POST /collection_location_entries.json
  def create
    @collection_location_entry = CollectionLocationEntry.new(params[:collection_location_entry])

    respond_to do |format|
      if @collection_location_entry.save
        format.html { redirect_to @collection_location_entry, notice: 'Collection location entry was successfully created.' }
        format.json { render json: @collection_location_entry, status: :created, location: @collection_location_entry }
      else
        format.html { render action: "new" }
        format.json { render json: @collection_location_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /collection_location_entries/1
  # PUT /collection_location_entries/1.json
  def update
    @collection_location_entry = CollectionLocationEntry.find(params[:id])

    respond_to do |format|
      if @collection_location_entry.update_attributes(params[:collection_location_entry])
        format.html { redirect_to @collection_location_entry, notice: 'Collection location entry was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @collection_location_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /collection_location_entries/1
  # DELETE /collection_location_entries/1.json
  def destroy
    @collection_location_entry = CollectionLocationEntry.find(params[:id])
    @collection_location_entry.destroy

    respond_to do |format|
      format.html { redirect_to collection_location_entries_url }
      format.json { head :no_content }
    end
  end
end
