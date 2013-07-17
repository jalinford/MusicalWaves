module ArtistsHelper
	def last_name(artist)
		artist.name.split(" ")[-1]
	end

	def first_name(artist)
		artist.name.split(" ")[0]
	end

	def num_programs(artist)
		artist.programs.count
	end

	def artists_sorted(artists)
		artists.sort { |a, b| 
			[num_programs(b), last_name(a), first_name(a)] <=> 
			[num_programs(a), last_name(b), first_name(b)] }
	end

	def performance_list(artist)
		p_array = Array.new
        artist.programs.sort { |a, b| a.title  <=> b.title }.each do |program|
        	p_array.push(link_to program.title, p_show_path(:title => program.title))
        end
        p_array.join(", ")
	end
end
