class ReserveParkingsController < ApplicationController
  before_action :set_reserve_parking, only: [:show, :edit, :update, :destroy]

  # GET /reserve_parkings
  # GET /reserve_parkings.json
  def index
    @reserve_parkings = ReserveParking.all
  end

  # GET /reserve_parkings/1
  # GET /reserve_parkings/1.json
  def show
  end

  # GET /reserve_parkings/new
  def new
    @reserve_parking = ReserveParking.new
  end

  # GET /reserve_parkings/1/edit
  def edit
  end

  # POST /reserve_parkings
  # POST /reserve_parkings.json
  def create
    @reserve_parking = ReserveParking.new(reserve_parking_params)

    respond_to do |format|
      if @reserve_parking.save
        format.html { redirect_to @reserve_parking, notice: 'Reserve parking was successfully created.' }
        format.json { render :show, status: :created, location: @reserve_parking }
      else
        format.html { render :new }
        format.json { render json: @reserve_parking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reserve_parkings/1
  # PATCH/PUT /reserve_parkings/1.json
  def update
    respond_to do |format|
      if @reserve_parking.update(reserve_parking_params)
        format.html { redirect_to @reserve_parking, notice: 'Reserve parking was successfully updated.' }
        format.json { render :show, status: :ok, location: @reserve_parking }
      else
        format.html { render :edit }
        format.json { render json: @reserve_parking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reserve_parkings/1
  # DELETE /reserve_parkings/1.json
  def destroy
    @reserve_parking.destroy
    respond_to do |format|
      format.html { redirect_to reserve_parkings_url, notice: 'Reserve parking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reserve_parking
      @reserve_parking = ReserveParking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reserve_parking_params
      params.require(:reserve_parking).permit(:fec_reserve, :fec_ini_reserve, :fec_fin_reserv, :hor_ini_reserve, :hor_fin_reserve, :mont_reserve, :cod_Pay, :state, :int, :user_id, :rent_parking_id)
    end
end
