module Trax
  module Admin
    module Concerns
      module Controllers
        module Taggable
          extend ::ActiveSupport::Concern
          
          included do
            def tags
              
            end
            
            def tag_params
              params.require(:tag).permit(:taggable_type, :taggable_id, :context, :name)
            end
      
            def taggable_context
              tag_params.fetch(:context) { "tags" }
            end
      
            def taggable_id
              @taggable_id ||= tag_params[:taggable_id]
            end
      
            def taggable_context_method
              "#{taggable_context.singularize}_list=".to_sym
            end
      
            def tag_name
              @tag_name ||= tag_params[:name]
            end
      
            def taggable_type
              tag_params.fetch(:taggable_type)
            end
      
            def taggable_resource
              @taggable_resource ||= taggable_type.constantize.find(taggable_id)
            end
      
            def resource
              @resource ||= taggable_resource.send(taggable_context.to_sym)
                                             .detect{ |tag| tag.id == tag_id }
            end
            
          end
        end
      end
    end
  end
end