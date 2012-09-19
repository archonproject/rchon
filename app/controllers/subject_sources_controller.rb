class SubjectSourcesController < ApplicationController
  # GET /subject_sources
  # GET /subject_sources.json
  def index
    @subject_sources = SubjectSource.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @subject_sources }
    end
  end

  # GET /subject_sources/1
  # GET /subject_sources/1.json
  def show
    @subject_source = SubjectSource.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @subject_source }
    end
  end

  # GET /subject_sources/new
  # GET /subject_sources/new.json
  def new
    @subject_source = SubjectSource.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @subject_source }
    end
  end

  # GET /subject_sources/1/edit
  def edit
    @subject_source = SubjectSource.find(params[:id])
  end

  # POST /subject_sources
  # POST /subject_sources.json
  def create
    @subject_source = SubjectSource.new(params[:subject_source])

    respond_to do |format|
      if @subject_source.save
        format.html { redirect_to @subject_source, notice: 'Subject source was successfully created.' }
        format.json { render json: @subject_source, status: :created, location: @subject_source }
      else
        format.html { render action: "new" }
        format.json { render json: @subject_source.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /subject_sources/1
  # PUT /subject_sources/1.json
  def update
    @subject_source = SubjectSource.find(params[:id])

    respond_to do |format|
      if @subject_source.update_attributes(params[:subject_source])
        format.html { redirect_to @subject_source, notice: 'Subject source was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @subject_source.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subject_sources/1
  # DELETE /subject_sources/1.json
  def destroy
    @subject_source = SubjectSource.find(params[:id])
    @subject_source.destroy

    respond_to do |format|
      format.html { redirect_to subject_sources_url }
      format.json { head :no_content }
    end
  end
end
