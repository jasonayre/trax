module Trax
  module Backend
    module Concerns
      module Controllers
        module Base
          extend ActiveSupport::Concern
          included do
            def current_site
              @current_site ||= ::Trax::Site.by_current_host(request.host)
            end
            
            def set_current_site_title
              ::ActiveAdmin.application.site_title = current_site.name
            end
            
            def active_admin_resource_name
              controller_name.singularize
            end
            
            def backend_resource_namespace
              @backend_resource_namespace ||= self.resource_class.name.split("::").first
            end
            
            def backend_resource_class_name
              @backend_resource_namespace ||= self.resource_class.name.split("::").last
            end
            
            def backend_resource_message_class
              "::Trax::Backend::#{backend_resource_class_name}".classify
            end
                        
            def permitted_message_class
              "::Trax::Backend::#{backend_resource_class_name}PermittedParams".constantize
            end
            
            def permitted_params
              params.permit active_admin_resource_name.to_sym => permitted_params_for_resource
            end
            
            def permitted_params_for_resource
              permitted_message_class.field_name_to_tag.keys
            end

          end
        end
      end
    end
  end
end
