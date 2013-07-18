module ArtistsHelper
	def last_name(artist)
		artist.name.split(" ")[-1]
	end

	def first_name(artist)
		artist.name.split(" ")[0]
	end

	def artist_name_sort(artists)
        artists.sort { |a, b| [last_name(a), first_name(a)]  <=> [last_name(b), first_name(b)] }
    end

	def num_programs(artist)
		artist.programs.count
	end

	def artists_sorted(artists)
		artists.sort { |a, b| 
			[artist_priority(b), num_programs(b), last_name(a), first_name(a)] <=> 
			[artist_priority(a), num_programs(a), last_name(b), first_name(b)] }
	end

	def performance_list(artist)
		p_array = Array.new
        future_performances(artist).sort { |a, b| a.title  <=> b.title }.each do |program|
        	p_array.push(link_to program.title, p_show_path(:title => program.title))
        end
        p_array.join(", ")
	end

	def future_performances(artist)
		future_programs(artist.programs)
	end

	def artist_priority(artist)
		if future_performances(artist) == []
			return 0
		else
			return 1
		end
	end
end
