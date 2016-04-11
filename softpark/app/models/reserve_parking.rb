class ReserveParking < ActiveRecord::Base
  belongs_to :user
  belongs_to :rent_parking
  
  has_many :feedbacks 
  has_many :users, through: :feedbacks
end
