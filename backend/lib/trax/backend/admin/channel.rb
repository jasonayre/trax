::ActiveAdmin.register ::Trax::Channel do
  scope_to :current_site
  
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
  
  controller do
    include ::Trax::Backend::Concerns::BaseResource
    
    def permitted_params
      params.permit :trax_channel => [:name, :details, :description, :routing_strategy, :active]
    end
  end
end
