class ProgramsController < InheritedResources::Base
	def index
  	@title = "Concerts"
  	@concerts = Concert.all
  	@programs = Program.all
  end
end
