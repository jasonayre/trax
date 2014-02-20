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
        config.assets.paths << ::Trax::Core::Protos.path
        config.assets.paths << ::Trax::Core::Protos.js_path

        ::Trax::Core::Themes.each do |theme|
          paths["app/views"].unshift("#{::Rails.root}/vendor/themes/#{theme.name}/app/views")
          config.assets.paths << "#{::Rails.root}/vendor/themes/#{theme.name}/javascripts"
          config.assets.paths << "#{::Rails.root}/vendor/themes/#{theme.name}/stylesheets"

        end
      end
    end
  end
end
