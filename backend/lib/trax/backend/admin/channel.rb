::ActiveAdmin.register ::Trax::Channel do
  scope_to :current_site, :association_method => :channels
  
  index
  
  form do |f|
    f.inputs "Meta Info" do
      f.input :name
      f.input :details
      f.input :description
    end
    
    f.inputs "Settings" do
      f.input :active, :as => :select, :collection => [true, false]
      f.input :routing_strategy, :as => :select, :collection => ::Trax::Channel::ROUTING_STRATEGIES
    end
    
    f.actions
  end
end
