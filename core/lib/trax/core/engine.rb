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
      
      initializer :trax_core do
        ::Trax::Core::Themes.each do |theme|
          puts theme.inspect
          config.assets.paths << "#{::Rails.root}/vendor/themes/#{theme.name}/javascripts"
          config.assets.paths << "#{::Rails.root}/vendor/themes/#{theme.name}/stylesheets"          
          
          # config.assets.paths << "#{::Rails.root}/vendor/themes/#{theme.name}/js"          
          puts config.assets.paths.inspect
        end
        
        puts "INITIALIZING TRAX CORE"
        
      end
    end
  end
end
