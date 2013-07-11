class Artist < ActiveRecord::Base
  attr_accessible :bio, :instrument, :name, :picture
end
