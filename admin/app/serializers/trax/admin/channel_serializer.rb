module Trax
  module Admin
    class ChannelSerializer < ActiveModel::Serializer
      attributes :id, :name, :details, :description, :active, :slug, :routing_strategy
    end
  end
end