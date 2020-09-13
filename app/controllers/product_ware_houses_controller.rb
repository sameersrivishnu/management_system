class ProductWareHousesController < ApplicationController
  before_action :set_product_ware_house, only: [:show, :edit, :update, :destroy]

  # GET /product_ware_houses
  # GET /product_ware_houses.json
  def index
    @product_ware_houses = ProductWareHouse.all
  end

  # GET /product_ware_houses/1
  # GET /product_ware_houses/1.json
  def show
  end

  # GET /product_ware_houses/new
  def new
    @product_ware_house = ProductWareHouse.new
  end

  # GET /product_ware_houses/1/edit
  def edit
  end

  # POST /product_ware_houses
  # POST /product_ware_houses.json
  def create
    @product_ware_house = ProductWareHouse.new(product_ware_house_params)
    respond_to do |format|
      if @product_ware_house.save
     
        format.html { redirect_to @product_ware_house, notice: 'Ware house was successfully created.' }
        format.json { render :show, status: :created, location: @product_ware_house }
      else
        format.html { render :new }
        format.json { render json: @product_ware_house.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_ware_houses/1
  # PATCH/PUT /product_ware_houses/1.json
  def update
    respond_to do |format|
      if @product_ware_house.update(product_ware_house_params)
        format.html { redirect_to @product_ware_house, notice: 'Ware house was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_ware_house }
      else
        format.html { render :edit }
        format.json { render json: @product_ware_house.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_ware_houses/1
  # DELETE /product_ware_houses/1.json
  def destroy
    @product_ware_house.destroy
    respond_to do |format|
      format.html { redirect_to product_ware_houses_url, notice: 'Ware house was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_ware_house
      @product_ware_house = ProductWareHouse.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_ware_house_params
      params.require(:product_ware_house).permit(:low_item_threshold, :item_count)
    end
end
