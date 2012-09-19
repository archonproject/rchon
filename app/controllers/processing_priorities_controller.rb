class ProcessingPrioritiesController < ApplicationController
  # GET /processing_priorities
  # GET /processing_priorities.json
  def index
    @processing_priorities = ProcessingPriority.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @processing_priorities }
    end
  end

  # GET /processing_priorities/1
  # GET /processing_priorities/1.json
  def show
    @processing_priority = ProcessingPriority.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @processing_priority }
    end
  end

  # GET /processing_priorities/new
  # GET /processing_priorities/new.json
  def new
    @processing_priority = ProcessingPriority.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @processing_priority }
    end
  end

  # GET /processing_priorities/1/edit
  def edit
    @processing_priority = ProcessingPriority.find(params[:id])
  end

  # POST /processing_priorities
  # POST /processing_priorities.json
  def create
    @processing_priority = ProcessingPriority.new(params[:processing_priority])

    respond_to do |format|
      if @processing_priority.save
        format.html { redirect_to @processing_priority, notice: 'Processing priority was successfully created.' }
        format.json { render json: @processing_priority, status: :created, location: @processing_priority }
      else
        format.html { render action: "new" }
        format.json { render json: @processing_priority.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /processing_priorities/1
  # PUT /processing_priorities/1.json
  def update
    @processing_priority = ProcessingPriority.find(params[:id])

    respond_to do |format|
      if @processing_priority.update_attributes(params[:processing_priority])
        format.html { redirect_to @processing_priority, notice: 'Processing priority was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @processing_priority.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /processing_priorities/1
  # DELETE /processing_priorities/1.json
  def destroy
    @processing_priority = ProcessingPriority.find(params[:id])
    @processing_priority.destroy

    respond_to do |format|
      format.html { redirect_to processing_priorities_url }
      format.json { head :no_content }
    end
  end
end
