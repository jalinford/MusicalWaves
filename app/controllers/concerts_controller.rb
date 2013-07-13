class ConcertsController < InheritedResources::Base
	def concerts
  	@title = "Concerts"
  end

  def new
  	@concert = Concert.new(program_id: params[:program_id])
  end
end
