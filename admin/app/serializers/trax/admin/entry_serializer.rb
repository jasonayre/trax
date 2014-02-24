module Trax
  module Admin
    class EntrySerializer < ActiveModel::Serializer
      # attributes ::Trax::Core::EntryPermittedParams.field_name_to_tag.keys
      attributes :id, :channel_id, :title, :preview, :body, :routing_strategy, :slug
    end
  end
end