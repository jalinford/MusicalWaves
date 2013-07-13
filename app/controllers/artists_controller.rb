class ArtistsController < ApplicationController
	def show
		@artist = Artist.find_by_name(params[:name])
		@title = @artist.name
	end	

	def artists
		@title = "Artists"
		@artists = Artist.all
	end
end