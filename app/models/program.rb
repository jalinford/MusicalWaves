class Program < ActiveRecord::Base
  attr_accessible :description, :title, :website, :artist_ids, :concert_ids, :concerts_attributes
  validates_presence_of :title, :description
  validates_uniqueness_of :title
  has_many :concerts, :dependent => :destroy
  has_many :artist_performances, :dependent => :destroy
  has_many :artists, :through => :artist_performances
  accepts_nested_attributes_for :artists
  accepts_nested_attributes_for :artist_performances
  accepts_nested_attributes_for :concerts, :allow_destroy => true

  def date_of_first_performance
  	list = self.concerts.order("date ASC")
  	if list.empty?
  		return Time.now.to_date + 2.year
  	else
  		return list.first.date
  	end
  end

end
