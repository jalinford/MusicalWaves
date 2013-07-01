module ApplicationHelper
	# Return a title on a per-page basis
	def page_title
		base_title = "Musical Waves"
		if @title.nil?
			base_title
		else
			"#{base_title} | #{@title}"
		end
	end

	def page
		@title unless @title.nil?
	end
end
