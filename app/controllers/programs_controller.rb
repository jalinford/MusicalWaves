class ProgramsController < InheritedResources::Base
	def index
  	@title = "Concerts"
  	@programs = Program.all
  end
	def new
		  @program = Program.new
	  3.times do
	    concert = @program.concerts.build
	  end
	end

end
