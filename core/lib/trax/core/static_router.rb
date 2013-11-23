module Trax
  module Core
    module StaticRouter
      class Channels
        class << self
          attr_accessor :static_paths
        end

        def self.loaded_static_routes
          return unless ::ActiveRecord::Base.connection.table_exists?("trax_channels")
          @loaded_static_routes ||= ::Trax::Channel.by_static_route.map(&:slug)
        end

        @static_paths ||= loaded_static_routes

        def self.matches?(request)
          return false unless static_paths.include?(request.params[:path])
          request.env["action_dispatch.request.path_parameters"][:id] ||= request.params[:path]
          true
        end
      end

      class Entries
        class << self
          attr_accessor :static_paths
        end

        def self.loaded_static_routes
          return unless ::ActiveRecord::Base.connection.table_exists?("trax_entries")
          @loaded_static_routes ||= ::Trax::Entry.by_static_route.map(&:slug)
        end

        @static_paths ||= ::Trax::Core::StaticRouter::Entries.loaded_static_routes

        def self.matches?(request)
          return false unless static_paths.include?(request.params[:path])
          request.env["action_dispatch.request.path_parameters"][:id] ||= request.params[:path]
          true
        end
      end
    end
  end
end
