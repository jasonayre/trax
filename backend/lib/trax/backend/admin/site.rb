::ActiveAdmin.register ::Trax::Site do
  index
  
  form do |f|
    f.inputs "Meta Info" do
      f.input :host
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
  
  controller do
    def permitted_params
      params.permit :trax_site => [:name, :details, :description, :host, :is_default, :routing_strategy]
    end
  end
end
