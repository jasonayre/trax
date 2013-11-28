module Trax
  module Admin
    class ApplicationController < InheritedResources::Base
    
      layout Proc.new { |controller| "trax/admin/layouts/one_column" }
    
      def current_site
        @current_site ||= ::Trax::Site.by_current_host(request.host)
      end
      
      def admin_resource_name
        "#{admin_resource_namespace.underscore}_#{admin_resource_class_name}"
      end
    
      def admin_resource_namespace
        @admin_resource_namespace ||= self.resource_class.name.split("::").first
      end
    
      def admin_resource_class_name
        @admin_resource_namespace ||= self.resource_class.name.split("::").last
      end
    
      def admin_resource_message_class
        "::Trax::Admin::#{admin_resource_class_name}".classify
      end
      
      def default_permitted_params
        [admin_resource_class_name.underscore.to_sym, :id]
      end
                
      def permitted_message_class
        "::Trax::Admin::#{controller_name.classify}PermittedParams".constantize
      end
    
      def permitted_params
        params.permit(admin_resource_class_name.underscore.to_sym => permitted_params_for_resource)
      end
      
      def permitted_params_for_resource
        permitted_message_class.field_name_to_tag.keys + default_permitted_params
      end
      
      def begin_of_association_chain
        current_site
      end
    end
  end
end
