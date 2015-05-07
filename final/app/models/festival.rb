class Festival < ActiveRecord::Base

  has_many :performers
  has_many :artists, :through => :performers

  belongs_to :location
  belongs_to :genre

end
