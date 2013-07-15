class ConcertsController < InheritedResources::Base
	def new
		@concert = Concert.new(program_id: params[:program_id])
	end
end
