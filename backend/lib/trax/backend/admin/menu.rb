::ActiveAdmin.register ::Trax::Menu, :as => "Menu" do
  # scope_to :current_site, :association_method => :menus
  
  index
  
  form do |f|
    f.inputs "Details" do
      f.input :name
      # f.input :partial
    end
    
    f.actions
  end
  
  sidebar "Nav", only: [:show, :edit] do
    ul do
      # li link_to("Menu Items", admin_menu_menu_items_path(menu))
      # li link_to "Add New Menu Item", new_admin_menu_item_path
    end
  end
  
end
