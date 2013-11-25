module Trax
  module Admin
    class ApplicationController < ActionController::Base
    
      layout Proc.new { |controller| "trax/admin/layouts/one_column" }
    
      def current_site
        @current_site ||= ::Trax::Site.by_current_host(request.host)
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
                
      def permitted_message_class
        "::Trax::Admin::#{admin_resource_class_name}PermittedParams".constantize
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
end
