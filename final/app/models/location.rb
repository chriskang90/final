# References
# 1. Google Maps for Rails guide
#    https://github.com/apneadiving/Google-Maps-for-Rails

class Location < ActiveRecord::Base

  has_many :festivals, :dependent => :nullify

  validates :name, :presence => true, :uniqueness => true

  # Geocoding
  geocoded_by :name
  after_validation :geocode

end
