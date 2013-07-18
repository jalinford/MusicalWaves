module ProgramsHelper

	def artist_list(program)
		a_array = Array.new
        program.artists.sort { |a, b| [last_name(a), first_name(a)]  <=> [last_name(b), first_name(b)] }.each do |artist|
        	a_array.push(link_to artist.name, a_show_path(:name => artist.name))
        end
        a_array.join(", ")
    end

    def program_sort(programs)
    	programs.sort { |a, b| first_performance(a) <=> first_performance(b) }
    end

    def reverse_program_sort(programs)
    	programs.sort { |a, b| first_performance(b) <=> first_performance(a) }
    end

    def program_performed(program)
    	counter = 0
    	counter = counter + 1 if program.concerts == []
   		program.concerts.each do |concert|
   			if Time.now.to_date < concert.date + 1.day
   				counter = counter + 1
   				break
   			end
   			break if counter == 1
   		end
   		if counter == 1
   			return false
   		else
   			return true
   		end
   	end

   	def next_program
   		programs = future_programs(Program.all)
   		next_program = programs[0] unless programs == []
   		programs.each do |program|
   			if first_performance(program) < first_performance(next_program)
   				next_program = program
   			end
   		end
   		return next_program
   	end

   	def future_programs(programs)
   		future_programs = []
   		programs.each do |program|
   			future_programs.push(program) if !program_performed(program)
   		end
   		return future_programs
   	end

   	def past_programs(programs)
   		past_programs = []
   		programs.each do |program|
   			past_programs.push(program) if program_performed(program)
   		end
   		return past_programs
   	end

   	def first_performance(program)
   		date = Time.now.to_date + 3.year
   		program.concerts.each do |concert|
   			if date > concert.date
   				date = concert.date
   			end
   		end
   		return date
   	end

    def concert_sort(program)
    	program.concerts.sort { |a, b| [a.date, get_time(a)] <=> [b.date, get_time(b)] }
    end

    def get_time(concert)
    	begin
    		DateTime.parse(concert.time).strftime("%H:%M")
    	rescue
    		"23:59"
    	end
    end
end
