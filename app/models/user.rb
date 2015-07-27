class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  geocoded_by :address_from_components
  # geocoded_by :current_sign_in_ip   
  after_validation :geocode
  # after_validation :geocode, :if => :current_sign_in_ip_changed?  
  reverse_geocoded_by :latitude, :longitude, :address => :full_address
  after_validation :reverse_geocode  # auto-fetch address

  def address_from_components          
    "#{address.to_s}, #{city.to_s}".upcase
  end

end

# => [14.5929539, 120.9517779]
# Geocoder.coordinates("25 Main St, Cooperstown, NY")
# Geocoder.coordinates("121.58.212.164")
# => [7.11, 125.649]