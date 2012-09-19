class AccessionLocationEntriesController < ApplicationController
  # GET /accession_location_entries
  # GET /accession_location_entries.json
  def index
    @accession_location_entries = AccessionLocationEntry.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @accession_location_entries }
    end
  end

  # GET /accession_location_entries/1
  # GET /accession_location_entries/1.json
  def show
    @accession_location_entry = AccessionLocationEntry.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @accession_location_entry }
    end
  end

  # GET /accession_location_entries/new
  # GET /accession_location_entries/new.json
  def new
    @accession_location_entry = AccessionLocationEntry.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @accession_location_entry }
    end
  end

  # GET /accession_location_entries/1/edit
  def edit
    @accession_location_entry = AccessionLocationEntry.find(params[:id])
  end

  # POST /accession_location_entries
  # POST /accession_location_entries.json
  def create
    @accession_location_entry = AccessionLocationEntry.new(params[:accession_location_entry])

    respond_to do |format|
      if @accession_location_entry.save
        format.html { redirect_to @accession_location_entry, notice: 'Accession location entry was successfully created.' }
        format.json { render json: @accession_location_entry, status: :created, location: @accession_location_entry }
      else
        format.html { render action: "new" }
        format.json { render json: @accession_location_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /accession_location_entries/1
  # PUT /accession_location_entries/1.json
  def update
    @accession_location_entry = AccessionLocationEntry.find(params[:id])

    respond_to do |format|
      if @accession_location_entry.update_attributes(params[:accession_location_entry])
        format.html { redirect_to @accession_location_entry, notice: 'Accession location entry was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @accession_location_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accession_location_entries/1
  # DELETE /accession_location_entries/1.json
  def destroy
    @accession_location_entry = AccessionLocationEntry.find(params[:id])
    @accession_location_entry.destroy

    respond_to do |format|
      format.html { redirect_to accession_location_entries_url }
      format.json { head :no_content }
    end
  end
end
