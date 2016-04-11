class RentParking < ActiveRecord::Base
  belongs_to :user
  belongs_to :location
  belongs_to :type_parking
  
  has_many :reserve_parkings 
  has_many :users, through: :reserve_parkings
  
  has_many :favorite_parkings 
  has_many :users, through: :favorite_parkings
end
