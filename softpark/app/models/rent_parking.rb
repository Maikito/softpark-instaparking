class RentParking < ActiveRecord::Base
  belongs_to :user
  belongs_to :location
  belongs_to :type_parking
end
