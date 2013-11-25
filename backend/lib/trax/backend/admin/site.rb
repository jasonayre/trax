::ActiveAdmin.register ::Trax::Site, :as => "Site" do
  index
  
  form do |f|
    f.inputs "Meta Info" do
      f.input :host
      f.input :name
      f.input :details
      f.input :description
    end
    
    f.inputs "Settings" do
      f.input :active
      f.input :routing_strategy, :as => :select, :collection => ::Trax::Channel::ROUTING_STRATEGIES
      f.input :is_default
      f.input :theme, :as => :select, :collection => ::Trax::Theme.all
    end
    
    f.actions
  end
  
end
