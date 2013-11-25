module Trax
  module Admin
    class Engine < ::Rails::Engine
      isolate_namespace Trax

      initializer :trax_admin do
        puts "INITIALIZING TRAX admin"
        config.assets.paths << "#{Engine.root}/app/assets/templates"

      end
    end
  end
end
