class Genre < ActiveRecord::Base

  has_many :festivals, :dependent => :nullify

  validates :name, :presence => true, :uniqueness => true

end
