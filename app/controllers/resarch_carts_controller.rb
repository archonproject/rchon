class ResarchCartsController < ApplicationController
  # GET /resarch_carts
  # GET /resarch_carts.json
  def index
    @resarch_carts = ResarchCart.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @resarch_carts }
    end
  end

  # GET /resarch_carts/1
  # GET /resarch_carts/1.json
  def show
    @resarch_cart = ResarchCart.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @resarch_cart }
    end
  end

  # GET /resarch_carts/new
  # GET /resarch_carts/new.json
  def new
    @resarch_cart = ResarchCart.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @resarch_cart }
    end
  end

  # GET /resarch_carts/1/edit
  def edit
    @resarch_cart = ResarchCart.find(params[:id])
  end

  # POST /resarch_carts
  # POST /resarch_carts.json
  def create
    @resarch_cart = ResarchCart.new(params[:resarch_cart])

    respond_to do |format|
      if @resarch_cart.save
        format.html { redirect_to @resarch_cart, notice: 'Resarch cart was successfully created.' }
        format.json { render json: @resarch_cart, status: :created, location: @resarch_cart }
      else
        format.html { render action: "new" }
        format.json { render json: @resarch_cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /resarch_carts/1
  # PUT /resarch_carts/1.json
  def update
    @resarch_cart = ResarchCart.find(params[:id])

    respond_to do |format|
      if @resarch_cart.update_attributes(params[:resarch_cart])
        format.html { redirect_to @resarch_cart, notice: 'Resarch cart was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @resarch_cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resarch_carts/1
  # DELETE /resarch_carts/1.json
  def destroy
    @resarch_cart = ResarchCart.find(params[:id])
    @resarch_cart.destroy

    respond_to do |format|
      format.html { redirect_to resarch_carts_url }
      format.json { head :no_content }
    end
  end
end
