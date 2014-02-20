module Trax
  class BaseDecorator < Draper::Decorator
    include ::InheritedResources::UrlHelpers
    include ::Draper::LazyHelpers

    delegate_all

    def resource_link_text
      object.name
    end

    def resource_key
      self.class.name.demodulize.underscore.split("_decorator").first
    end

    def link_to_resource
      # link_to(resource_link_text, main_app.root_path)
      # h.content_tag(:strong, object.id)
    end

    def link_to_resource_permalink
      link_to(resource_link_text, main_app.__send__("trax_#{resource_key}_permalink_url", object.slug))
    end
  end
end