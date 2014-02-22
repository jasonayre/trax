module Trax
  class BaseDecorator < Draper::Decorator
    include ::InheritedResources::UrlHelpers
    include ::Draper::LazyHelpers

    delegate_all

    def resource_link_text
      object.name
    end

    def link_to_resource
      resource.respond_to?(:routing_strategy) ? "responds to routing strategy" : "no routing strategy"
    end

    def link_to_resource_permalink
      link_to(resource_link_text, main_app.__send__(permalink_url_method, object.slug))
    end

    def permalink_url_method
      "trax_#{resource_key}_permalink_url"
    end

    def resource_key
      self.class.name.demodulize.underscore.split("_decorator").first
    end
  end
end