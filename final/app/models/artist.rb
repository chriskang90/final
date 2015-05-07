class Artist < ActiveRecord::Base

  has_many :performers
  has_many :festivals, :through => :performers

end
