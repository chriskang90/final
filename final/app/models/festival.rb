class Festival < ActiveRecord::Base

  has_many :musicians, :through => :performers

  belongs_to :location
  belongs_to :genre

end
