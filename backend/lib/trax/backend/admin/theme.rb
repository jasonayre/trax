::ActiveAdmin.register ::Trax::Theme, :as => "Theme" do
  index
  
  form do |f|
    f.inputs "Details" do
      f.input :name
      f.input :version
    end
    
    f.actions
  end
end
