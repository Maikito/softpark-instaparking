class Feedback < ActiveRecord::Base
  belongs_to :user
  belongs_to :reserve_parking
end
