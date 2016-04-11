class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :profile
  
  has_many :rent_parkings
  
  has_many :reserve_parkings 
  has_many :rent_parkings, through: :reserve_parkings
  
  has_many :feedbacks 
  has_many :reserve_parkings, through: :feedbacks
  
  has_many :favorite_parkings 
  has_many :rent_parkings, through: :favorite_parkings
  
  enum role: [:user, :operator]
  
  after_initialize :set_default_role


#----------------------
  def set_default_role
    
  self.role ||= :user
  
  end
  
  
#--------------------  
  def default_profile

  if self.profile.nil?
    profile = Profile.new
    profile.user = self
    profile.save
    self.save      
  end

  self.profile

  end
 
#-------------------  
  def friendly_name

    if self.default_profile.first_name.nil?
      self.email
    else
      self.profile.full_name
    end
  end
  
         
end
