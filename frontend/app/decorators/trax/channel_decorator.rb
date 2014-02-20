module Trax
  class ChannelDecorator < ::Trax::BaseDecorator
    decorates_association :entry

    def link_to_resource_permalink
      link_to(resource_link_text, main_app.channel_permalink_url(object))
    end
  end
end