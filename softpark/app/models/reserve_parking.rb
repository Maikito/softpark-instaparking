class ReserveParking < ActiveRecord::Base
  belongs_to :user
  belongs_to :rent_parking
end
