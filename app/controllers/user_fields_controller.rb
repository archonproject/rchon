class UserFieldsController < ApplicationController
  # GET /user_fields
  # GET /user_fields.json
  def index
    @user_fields = UserField.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_fields }
    end
  end

  # GET /user_fields/1
  # GET /user_fields/1.json
  def show
    @user_field = UserField.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_field }
    end
  end

  # GET /user_fields/new
  # GET /user_fields/new.json
  def new
    @user_field = UserField.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_field }
    end
  end

  # GET /user_fields/1/edit
  def edit
    @user_field = UserField.find(params[:id])
  end

  # POST /user_fields
  # POST /user_fields.json
  def create
    @user_field = UserField.new(params[:user_field])

    respond_to do |format|
      if @user_field.save
        format.html { redirect_to @user_field, notice: 'User field was successfully created.' }
        format.json { render json: @user_field, status: :created, location: @user_field }
      else
        format.html { render action: "new" }
        format.json { render json: @user_field.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_fields/1
  # PUT /user_fields/1.json
  def update
    @user_field = UserField.find(params[:id])

    respond_to do |format|
      if @user_field.update_attributes(params[:user_field])
        format.html { redirect_to @user_field, notice: 'User field was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_field.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_fields/1
  # DELETE /user_fields/1.json
  def destroy
    @user_field = UserField.find(params[:id])
    @user_field.destroy

    respond_to do |format|
      format.html { redirect_to user_fields_url }
      format.json { head :no_content }
    end
  end
end
