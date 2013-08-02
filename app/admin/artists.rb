ActiveAdmin.register Artist do
  
  index do                            
    column :name                     
    column :instrument
    column :bio do |artist|
      truncate(strip_tags(artist.bio), :length=>250)
    end
    column("Programs") do |artist|
      p_array = Array.new
      artist.programs.each do |program|
        p_array.push(program.title)
      end
      p_array.join(", ").slice(0, 150)
    end
    default_actions                   
  end     

  filter :name
  filter :instrument

  form do |f|                         
    f.inputs "Artist Details" do       
      f.input :name                  
      f.input :instrument               
      f.input :picture, :hint => "Place the whole URL of the photo"
      f.input :bio, :as => :html_editor 
      f.input :programs, :as => :check_boxes
    end                               
    f.actions                         
  end

	show do
    attributes_table do
      row :name
      row :instrument
      row :picture
      row :bio
      row :created_at
      row :updated_at
      panel("Programs") do
    		table_for artist.programs do
    			column :title
    		end
    	end
    end
    active_admin_comments
   end

end
