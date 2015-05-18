class Location < ActiveRecord::Base

  has_many :festivals

  validates :name, :presence => true, :uniqueness => true

end
