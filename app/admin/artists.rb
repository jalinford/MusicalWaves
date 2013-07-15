ActiveAdmin.register Artist do
  
  index do                            
    column :name                     
    column :instrument              
    default_actions                   
  end     

  filter :name   

  form do |f|                         
    f.inputs "Artist Details" do       
      f.input :name                  
      f.input :instrument               
      f.input :picture, :hint => "Place the whole URL of the photo"
      f.input :bio 
    end                               
    f.actions                         
  end   

end
