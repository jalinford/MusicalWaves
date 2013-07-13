class Concert < ActiveRecord::Base
  attr_accessible :date, :location, :price, :tickets_link, :time, :program_id
  validates_presence_of :date, :location, :program_id
  belongs_to :program
end
