class CollectionContentsController < ApplicationController
  # GET /collection_contents
  # GET /collection_contents.json
  def index
    @collection_contents = CollectionContent.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @collection_contents }
    end
  end

  # GET /collection_contents/1
  # GET /collection_contents/1.json
  def show
    @collection_content = CollectionContent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @collection_content }
    end
  end

  # GET /collection_contents/new
  # GET /collection_contents/new.json
  def new
    @collection_content = CollectionContent.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @collection_content }
    end
  end

  # GET /collection_contents/1/edit
  def edit
    @collection_content = CollectionContent.find(params[:id])
  end

  # POST /collection_contents
  # POST /collection_contents.json
  def create
    @collection_content = CollectionContent.new(params[:collection_content])

    respond_to do |format|
      if @collection_content.save
        format.html { redirect_to @collection_content, notice: 'Collection content was successfully created.' }
        format.json { render json: @collection_content, status: :created, location: @collection_content }
      else
        format.html { render action: "new" }
        format.json { render json: @collection_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /collection_contents/1
  # PUT /collection_contents/1.json
  def update
    @collection_content = CollectionContent.find(params[:id])

    respond_to do |format|
      if @collection_content.update_attributes(params[:collection_content])
        format.html { redirect_to @collection_content, notice: 'Collection content was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @collection_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /collection_contents/1
  # DELETE /collection_contents/1.json
  def destroy
    @collection_content = CollectionContent.find(params[:id])
    @collection_content.destroy

    respond_to do |format|
      format.html { redirect_to collection_contents_url }
      format.json { head :no_content }
    end
  end
end
