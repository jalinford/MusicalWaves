class Artist < ActiveRecord::Base
  attr_accessible :bio, :instrument, :name, :picture
  validates_uniqueness_of :name
  validates_presence_of  :name
end
