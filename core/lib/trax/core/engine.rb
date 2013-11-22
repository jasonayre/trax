module Trax
  module Core
    class Engine < ::Rails::Engine
      isolate_namespace Trax
      
      config.generators do |g|
        g.test_framework :rspec, :fixture => false
        g.fixture_replacement :factory_girl, :dir => 'spec/factories'
        g.assets false
        g.helper false
      end

      config.autoload_paths << Engine.root.join("lib")
      
      puts config.autoload_paths
      initializer :trax_core do
        puts Engine.root
        puts "TRAX CORE INITIALIZING"
        
      end
    end
  end
end
