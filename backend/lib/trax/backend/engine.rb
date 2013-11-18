module Trax
  module Backend
    class Engine < ::Rails::Engine
      isolate_namespace Trax
      
      initializer :trax_backend do
        ::ActiveAdmin.application.load_paths += ::Dir[::File.dirname(__FILE__) + '/admin']
        
        ::ActiveAdmin::BaseController.class_eval do
          include ::Trax::Backend::Concerns::Controllers::Base
        end
      end
    end
  end
end
