class MainController < ApplicationController
  def home
  	@title = "Home"
  end

  def music
  	@title = "Music"
  end

  def concerts
  	@title = "Concerts"
  end
end
