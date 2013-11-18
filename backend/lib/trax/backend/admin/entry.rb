::ActiveAdmin.register ::Trax::Entry do
  scope_to :current_site, :association_method => :entries
  
  index
  
  form do |f|
    f.inputs "Relations" do
      f.input :channel
    end
    
    f.inputs "Content" do
      f.input :title
      f.input :body
    end

    # f.inputs "Meta Info" do
    #   # f.input :name
    #   # f.input :details
    #   # f.input :description
    # end
    
    # f.inputs "Settings" do
    #   f.input :active, :as => :select, :collection => [true, false]
    #   f.input :routing_strategy, :as => :select, :collection => ::Trax::Channel::ROUTING_STRATEGIES
    # end
    
    f.actions
  end
  
  controller do
    
    def permitted_params
      params.permit :trax_entry => [:channel, :title, :body, :slug, :active]
    end
  end
end
