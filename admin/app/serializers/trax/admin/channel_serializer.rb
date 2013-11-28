module Trax
  module Admin
    class ChannelSerializer < ActiveModel::Serializer
      attributes ::Trax::Admin::ChannelPermittedParams.field_name_to_tag.keys
    end
  end
end