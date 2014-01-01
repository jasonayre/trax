module Trax
  module Admin
    class TagSerializer < ActiveModel::Serializer
      attributes :id, :name, :resource_type, :taggable_id, :context
      
      def name
        object.tag.name
      end
      
      def resource_type
        object.taggable_type.demodulize.pluralize.underscore
      end      
    end
  end
end