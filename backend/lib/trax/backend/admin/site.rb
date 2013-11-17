::ActiveAdmin.register ::Trax::Site do
  index
  
  controller do
    include ::Trax::Backend::Concerns::BaseResource
    
    def permitted_params
      params.permit :trax_site => [:name, :details, :description, :host, :is_default]
    end
  end
end
