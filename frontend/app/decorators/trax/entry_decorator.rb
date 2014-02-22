module Trax
  class EntryDecorator < ::Trax::BaseDecorator
    def resource_link_text
      object.title
    end
  end
end