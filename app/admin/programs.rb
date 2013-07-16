ActiveAdmin.register Program do

  index do                            
    column :title                     
    column :description
    column("Artists") do |program|
      a_array = Array.new
      program.artists.each do |artist|
      	a_array.push(artist.name)
      end
      a_array.join(", ")
      #table_for program.artists do
        #column :name do |artist|
        #link_to artist.name, admin_artist_path(artist)
    	  #end
    	#end
    end
    default_actions                   
  end     

  filter :title

  form do |f|                         
	f.inputs "Program Details" do       
	  f.input :title                  
	  f.input :description               
	  f.input :website, :hint => "Place the whole URL of a related link"
	  f.input :artists, :as => :check_boxes

	  	f.has_many :concerts do |concert_f|
				concert_f.form_buffers.last << content_tag(:h1, " ")
	  		concert_f.form_buffers.last << content_tag(:h2, "Concert/Peformance")
	  		concert_f.input :date, :start_year => 2010
	  		concert_f.input :time, :hint => "write as 10 am or 2 pm (number followed by am/pm)"
	  		concert_f.input :location
	  		concert_f.input :price, :hint => "Only full value $ amounts, 50 is ok, 50.50 is not"
	  		concert_f.input :ticket_website, :hint => "Place the whole URL of link to buy tickets"
	  		concert_f.input :_destroy, :as=>:boolean, :required => false, :label=>'Check this box to remove the above Concert/Performance when Program updated'
	  	end

	end                               
	f.actions                         
  end

	show do
    attributes_table do
      row :title
      row :description
      row :website
      row :created_at
      row :updated_at
      panel("Artists") do
      	table_for program.artists do
    			column :name
    			column :instrument
    		end
    	end
    	panel("Concerts/Performances") do
    		table_for program.concerts do
    			column :date
    			column :time
    			column :location
    			column :price do |ticket|
    				number_to_currency ticket.price
    			end
    			column :ticket_website
    		end
    	end
    end
    active_admin_comments
   end

end