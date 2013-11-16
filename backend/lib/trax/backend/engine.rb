module Trax
  module Backend
    class Engine < ::Rails::Engine
      isolate_namespace Trax
      
      initializer :trax_backend do
        ::ActiveAdmin.application.load_paths += ::Dir[::File.dirname(__FILE__) + '/admin']
      end
    end
  end
end
