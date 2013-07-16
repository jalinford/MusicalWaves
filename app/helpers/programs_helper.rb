module ProgramsHelper
	def artist_list(program)
		a_array = Array.new
        program.artists.each do |artist|
        	a_array.push(artist.name)
        end
        a_array.join(", ")
    end
end
