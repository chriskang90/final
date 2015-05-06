class Artist < ActiveRecord::Base

  has_many :festivals, :through => :performers

end
