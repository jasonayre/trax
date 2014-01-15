module Trax
  module Admin
    class ChannelSerializer < ActiveModel::Serializer
      attributes ::Trax::Core::ChannelPermittedParams.field_name_to_tag.keys
    end
  end
end