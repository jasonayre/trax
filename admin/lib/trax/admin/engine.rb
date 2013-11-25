module Trax
  module Admin
    class Engine < ::Rails::Engine
      isolate_namespace Trax

      initializer :trax_admin do
        puts "INITIALIZING TRAX admin"
        config.assets.paths << "#{Engine.root}/app/assets/templates"
        config.assets.paths << "#{Engine.root}/app/assets/templates/admin/channels/"
        
        config.assets.paths << "#{Engine.root}/app/assets/templates/admin/entries/"        
        puts config.assets.paths.inspect
      end
    end
  end
end
