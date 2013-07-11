class ArtistsController < ApplicationController
	def show
		@artist = Artist.find_by_name(params[:name])
		@title = @artist.name
	end	

	def artists
		@title = "Artists"
		@artists = Artist.all
	end

	def test
		@artist = Artist.find_by_id(params[:id])
		@title = @artist.name
	end	
end