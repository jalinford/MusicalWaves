class Program < ActiveRecord::Base
  attr_accessible :description, :title, :website
  validates_presence_of :title, :description
  has_many :concerts, :dependent => :destroy
  has_many :artist_performances, :dependent => :destroy
  has_many :artists, :through => :artist_performances
  accepts_nested_attributes_for :artists
  accepts_nested_attributes_for :concerts, :reject_if => lambda { |a| a[:location].blank? }, :allow_destroy => true
end
