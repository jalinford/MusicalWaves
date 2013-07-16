class Artist < ActiveRecord::Base
  attr_accessible :bio, :instrument, :name, :picture, :program_ids
  validates_uniqueness_of :name
  validates_presence_of  :name
  has_many :artist_performances, :dependent => :destroy
  has_many :programs, :through => :artist_performances
  accepts_nested_attributes_for :programs
end
