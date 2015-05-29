class Artist < ActiveRecord::Base

  has_many :performances, :dependent => :delete_all

  # Artists can be part of more than one festival, so do not specify a dependent relationship
  has_many :festivals, :through => :performances

  validates :name, :presence => true

end
