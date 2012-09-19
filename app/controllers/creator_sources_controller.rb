class CreatorSourcesController < ApplicationController
  # GET /creator_sources
  # GET /creator_sources.json
  def index
    @creator_sources = CreatorSource.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @creator_sources }
    end
  end

  # GET /creator_sources/1
  # GET /creator_sources/1.json
  def show
    @creator_source = CreatorSource.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @creator_source }
    end
  end

  # GET /creator_sources/new
  # GET /creator_sources/new.json
  def new
    @creator_source = CreatorSource.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @creator_source }
    end
  end

  # GET /creator_sources/1/edit
  def edit
    @creator_source = CreatorSource.find(params[:id])
  end

  # POST /creator_sources
  # POST /creator_sources.json
  def create
    @creator_source = CreatorSource.new(params[:creator_source])

    respond_to do |format|
      if @creator_source.save
        format.html { redirect_to @creator_source, notice: 'Creator source was successfully created.' }
        format.json { render json: @creator_source, status: :created, location: @creator_source }
      else
        format.html { render action: "new" }
        format.json { render json: @creator_source.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /creator_sources/1
  # PUT /creator_sources/1.json
  def update
    @creator_source = CreatorSource.find(params[:id])

    respond_to do |format|
      if @creator_source.update_attributes(params[:creator_source])
        format.html { redirect_to @creator_source, notice: 'Creator source was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @creator_source.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /creator_sources/1
  # DELETE /creator_sources/1.json
  def destroy
    @creator_source = CreatorSource.find(params[:id])
    @creator_source.destroy

    respond_to do |format|
      format.html { redirect_to creator_sources_url }
      format.json { head :no_content }
    end
  end
end
