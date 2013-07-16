class Concert < ActiveRecord::Base
  attr_accessible :date, :location, :price, :program_id, :ticket_website, :time
  validates_presence_of :date, :location, :program_id, :time
  belongs_to :program
  accepts_nested_attributes_for :program
end
