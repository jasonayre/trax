module Trax
  module Admin
    class BaseSerializer < ActiveModel::Serializer
      attributes :meta
      
      def meta
        meta_hash = {}
        if object.errors.any?
          meta_hash[:errors] = object.errors
          
        end
        
        meta_hash
      end
    end
  end
end