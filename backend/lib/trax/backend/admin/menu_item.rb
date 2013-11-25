::ActiveAdmin.register ::Trax::MenuItem, :as => "MenuItem" do
  # scope_to :current_site, :association_method => :menu
  # belongs_to :menu
  # belongs_to :menu
  
  index do
    column :label
    column :name
    column :href
  end
  
  form do |f|
    f.inputs "Details" do
      f.input :name
      f.input :label
      f.input :href
    end
    
    f.actions
  end
end
