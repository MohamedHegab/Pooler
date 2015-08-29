class CarPoolingRequesstsController < ApplicationController
  before_action :set_car_pooling_requesst, only: [:show, :edit, :update, :destroy]

  # GET /car_pooling_requessts
  # GET /car_pooling_requessts.json
  def index
    @car_pooling_requessts = CarPoolingRequesst.all
  end

  # GET /car_pooling_requessts/1
  # GET /car_pooling_requessts/1.json
  def show
  end

  # GET /car_pooling_requessts/new
  def new
    @car_pooling_requesst = CarPoolingRequesst.new
  end

  # GET /car_pooling_requessts/1/edit
  def edit
  end

  # POST /car_pooling_requessts
  # POST /car_pooling_requessts.json
  def create
    @car_pooling_requesst = CarPoolingRequesst.new(car_pooling_requesst_params)

    respond_to do |format|
      if @car_pooling_requesst.save
        format.html { redirect_to @car_pooling_requesst, notice: 'Car pooling requesst was successfully created.' }
        format.json { render :show, status: :created, location: @car_pooling_requesst }
      else
        format.html { render :new }
        format.json { render json: @car_pooling_requesst.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /car_pooling_requessts/1
  # PATCH/PUT /car_pooling_requessts/1.json
  def update
    respond_to do |format|
      if @car_pooling_requesst.update(car_pooling_requesst_params)
        format.html { redirect_to @car_pooling_requesst, notice: 'Car pooling requesst was successfully updated.' }
        format.json { render :show, status: :ok, location: @car_pooling_requesst }
      else
        format.html { render :edit }
        format.json { render json: @car_pooling_requesst.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /car_pooling_requessts/1
  # DELETE /car_pooling_requessts/1.json
  def destroy
    @car_pooling_requesst.destroy
    respond_to do |format|
      format.html { redirect_to car_pooling_requessts_url, notice: 'Car pooling requesst was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car_pooling_requesst
      @car_pooling_requesst = CarPoolingRequesst.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def car_pooling_requesst_params
      params.require(:car_pooling_requesst).permit(:email, :password, :user_id, :travel_id, :prefer_from, :prefer_to)
    end
end
