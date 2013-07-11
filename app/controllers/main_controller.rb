class MainController < ApplicationController
  def home
  	@title = "Home"
  end

  def music
  	@title = "Music"
  end

  def artists
  	@title = "Artists"
    @artists = Artist.all
  end

  def concerts
  	@title = "Concerts"
  end
end
