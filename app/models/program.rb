class Program < ActiveRecord::Base
  attr_accessible :description, :title, :website
  validates_presence_of :title, :description
  has_many :concerts, :dependent => :destroy
end
