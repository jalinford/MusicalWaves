ActiveAdmin.register Artist do
  
  index do                            
    column :name                     
    column :instrument
    column "Programs/Concerts" do |concert|
    	concert.programs.each do
    		puts "Here"
    	end
    	puts "Nothing" if concert.programs.nil?
    end             
    default_actions                   
  end     

  filter :name   

  form do |f|                         
    f.inputs "Artist Details" do       
      f.input :name                  
      f.input :instrument               
      f.input :picture, :hint => "Place the whole URL of the photo"
      f.input :bio 
      f.input :programs, :as => :check_boxes
    end                               
    f.actions                         
  end   

end
