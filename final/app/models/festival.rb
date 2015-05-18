class Festival < ActiveRecord::Base

  has_many :performers
  has_many :artists, :through => :performers

  belongs_to :location
  belongs_to :genre

  validates :name, :presence => true, :uniqueness => true
  validates :location, :presence => true
  validates :genre, :presence => true

end
