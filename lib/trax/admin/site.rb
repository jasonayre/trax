::ActiveAdmin.register ::Trax::Site do
  index
  
  controller do
    def permitted_params
      params.permit :trax_site => [:name, :details, :description, :host, :is_default]
    end
  end
end
