module Trax
  class EntryDecorator < ::Trax::BaseDecorator
    def resource_link_text
      object.title
    end

    # def link_to_resource_permalink
    #         link_to(resource_link_text, permalink_url(object))
    # end


  end
end