class RentParkingsController < ApplicationController
  
  before_action :set_rent_parking, only: [:show, :edit, :update, :destroy]

  # GET /rent_parkings
  # GET /rent_parkings.json
  def index
    @rent_parkings = RentParking.all
    @locations=Location.all
  end

  # GET /rent_parkings/1
  # GET /rent_parkings/1.json
  def show
    @locations=Location.all
    @type_parkings = TypeParking.all
    
  end

  # GET /rent_parkings/new
  def new
    @rent_parking = RentParking.new
    @locations=Location.all
    @type_parkings= TypeParking.all
  end

  # GET /rent_parkings/1/edit
  def edit
    @locations=Location.all
    @type_parkings= TypeParking.all
  end

  # POST /rent_parkings
  # POST /rent_parkings.json
  def create
    
    @rent_parking = RentParking.new(rent_parking_params)
    @type_parkings= TypeParking.all


    
    respond_to do |format|
      if @rent_parking.save
        format.html { redirect_to @rent_parking, notice: 'Rent parking was successfully created.' }
        format.json { render :show, status: :created, location: @rent_parking }
      else
        format.html { render :new }
        format.json { render json: @rent_parking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rent_parkings/1
  # PATCH/PUT /rent_parkings/1.json
  def update
    respond_to do |format|
      if @rent_parking.update(rent_parking_params)
        format.html { redirect_to @rent_parking, notice: 'Rent parking was successfully updated.' }
        format.json { render :show, status: :ok, location: @rent_parking }
      else
        format.html { render :edit }
        format.json { render json: @rent_parking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rent_parkings/1
  # DELETE /rent_parkings/1.json
  def destroy
    @rent_parking.destroy
    respond_to do |format|
      format.html { redirect_to rent_parkings_url, notice: 'Rent parking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rent_parking
      @rent_parking = RentParking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rent_parking_params
      params.require(:rent_parking).permit(:title, :description, :price, :addres, :phone, :user_id, :location_id, :type_parking_id)
    end
end
