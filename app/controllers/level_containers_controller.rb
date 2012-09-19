class LevelContainersController < ApplicationController
  # GET /level_containers
  # GET /level_containers.json
  def index
    @level_containers = LevelContainer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @level_containers }
    end
  end

  # GET /level_containers/1
  # GET /level_containers/1.json
  def show
    @level_container = LevelContainer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @level_container }
    end
  end

  # GET /level_containers/new
  # GET /level_containers/new.json
  def new
    @level_container = LevelContainer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @level_container }
    end
  end

  # GET /level_containers/1/edit
  def edit
    @level_container = LevelContainer.find(params[:id])
  end

  # POST /level_containers
  # POST /level_containers.json
  def create
    @level_container = LevelContainer.new(params[:level_container])

    respond_to do |format|
      if @level_container.save
        format.html { redirect_to @level_container, notice: 'Level container was successfully created.' }
        format.json { render json: @level_container, status: :created, location: @level_container }
      else
        format.html { render action: "new" }
        format.json { render json: @level_container.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /level_containers/1
  # PUT /level_containers/1.json
  def update
    @level_container = LevelContainer.find(params[:id])

    respond_to do |format|
      if @level_container.update_attributes(params[:level_container])
        format.html { redirect_to @level_container, notice: 'Level container was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @level_container.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /level_containers/1
  # DELETE /level_containers/1.json
  def destroy
    @level_container = LevelContainer.find(params[:id])
    @level_container.destroy

    respond_to do |format|
      format.html { redirect_to level_containers_url }
      format.json { head :no_content }
    end
  end
end
