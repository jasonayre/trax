module Trax
  module Admin
    class ApplicationController < ::ActionController::Base
      
      inherit_resources
      
      helper_method :admin_base_url
    
      layout Proc.new { |controller| "trax/admin/layouts/one_column" }
      
      SEVERITY_ICONS = {
        :error => "<i class='fa fa-thumbs-down'></i>".html_safe,
        :success => "<i class='fa fa-thumbs-up'></i>".html_safe
      }.freeze
      
      def admin_base_url
        "http://#{request.host}:#{request.port}/admin"
      end
    
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
        "::Trax::Core::#{controller_name.classify}PermittedParams".constantize
      end
    
      def permitted_params
        # params.permit(admin_resource_class_name.underscore.to_sym => permitted_params_for_resource)
        params.permit!
      end
      
      def permitted_params_for_resource
        permitted_message_class.field_name_to_tag.keys + default_permitted_params
      end
      
      def resource_json_key
        :"#{resource_class.name.demodulize.underscore}"
      end
      
      def update
        puts serializer_for_resource
        puts "SERIALIZER FOR RES"
        update! do |success, failure|
          success.json do
            render :json => { resource_json_key => resource, :messages => response_messages }
          end
          failure.json do
            render :json => { :messages => response_messages }, :status => 403
          end
        end
      end
      
      #todo: refactor me
      def response_messages
        if resource.errors.any?
          response_message_errors
        else
          response_message_successes
        end
      end
      
      def response_severity
        @response_severity ||= (resource && resource.errors.any?) ? :error : :success
      end
      
      def response_message_errors
        resource.errors.map do |field, message|
          {:text => "#{severity_icon} #{field.to_s.titleize} #{message}", :severity => "error"}
        end
      end
      
      #todo: client side me
      def severity_icon
        @severity_icon ||= SEVERITY_ICONS[response_severity]
      end
      
      def response_message_severity_icon_map
        {:error => "<i class='fa fa-thumbs-up'></i>"}
      end
      
      def response_message_successes
        [{:text => "#{severity_icon} #{resource.class.name.demodulize} saved successfully", :severity => "success"}]
      end

      def serializer_for_resource
        "#{admin_resource_namespace}::Admin::#{resource_class.name.demodulize}Serializer".constantize
      end
            
      # def begin_of_association_chain
      #   current_site
      # end
    end
  end
end
