class Badge < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true
  has_many :players, :through => :awards
  has_many :awards
end
