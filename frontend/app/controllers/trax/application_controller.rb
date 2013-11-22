module Trax
  class ApplicationController < ActionController::Base
    def current_site
      @current_site ||= ::Trax::Site.by_current_host(request.host)
    end
        
    def active_admin_resource_name
      controller_name.singularize
    end
    
    def frontend_resource_namespace
      @frontend_resource_namespace ||= self.resource_class.name.split("::").first
    end
    
    def frontend_resource_class_name
      @frontend_resource_namespace ||= self.resource_class.name.split("::").last
    end
    
    def frontend_resource_message_class
      "::Trax::Frontend::#{frontend_resource_class_name}".classify
    end
                
    def permitted_message_class
      "::Trax::Frontend::#{frontend_resource_class_name}PermittedParams".constantize
    end
    
    def prepend_view_paths
      prepend_view_path(File.join('app', 'views', current_site.theme.name)) if current_site
    end
    
    
    # def permitted_params
    #   params.permit active_admin_resource_name.to_sym => permitted_params_for_resource
    # end
    # 
    # def permitted_params_for_resource
    #   permitted_message_class.field_name_to_tag.keys
    # end
    
  end
end
