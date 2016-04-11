class TrasactionController < ApplicationController
  
  
  def list
    # @locations = Location.all
   # @rent_parkings=  RentParking.joins(:locations).where('locations.id' => params[:id])
     
     @rent_parkings=  RentParking.where("location_id = ? " , params[:id])
  end

  
  def histori
  end

  def favorite
  end

  def detail
    @rent_parking=  RentParking.find(params[:idparking])
  end

  def paiment
  end

  def confirmation
  end
  
  
end
