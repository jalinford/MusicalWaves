module ProgramsHelper

	def artist_list(program)
		a_array = Array.new
        program.artists.sort { |a, b| [last_name(a), first_name(a)]  <=> [last_name(b), first_name(b)] }.each do |artist|
        	a_array.push(link_to artist.name, a_show_path(:name => artist.name))
        end
        a_array.join(", ")
    end

    def concert_sort(program)
    	program.concerts.sort { |a, b| a.date <=> b.date }
    end
end
