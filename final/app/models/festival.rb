class Festival < ActiveRecord::Base

  has_many :performances
  has_many :artists, :through => :performances

  belongs_to :location
  belongs_to :genre

  validates :name, :presence => true, :uniqueness => true
  validates :location, :presence => true
  validates :genre, :presence => true

end
