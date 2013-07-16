class ProgramsController < InheritedResources::Base
	def index
  	@title = "Concerts"
  	@programs = Program.all
  end

	def show
		@program = Program.find_by_title(params[:title])
		@title = @program.title
	end	

end
