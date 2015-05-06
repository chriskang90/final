class Musician < ActiveRecord::Base

  has_many :festivals, :through => :performers

end
