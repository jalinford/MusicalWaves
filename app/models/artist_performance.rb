class ArtistPerformance < ActiveRecord::Base
  attr_accessible :artist_id, :program_id
  belongs_to :artist
  belongs_to :program
end
