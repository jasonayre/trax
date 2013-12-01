module Trax
  module Admin
    class Engine < ::Rails::Engine
      isolate_namespace Trax
      
      def self.testy
        "I AM TEST STRING";
      end

      initializer :trax_admin do
        puts "INITIALIZING TRAX admin"
        config.assets.paths << "#{Engine.root}/app/assets/templates"
        
        config.assets.paths << "#{Engine.root}/app/assets/templates"
        config.assets.paths << "#{Engine.root}/app/assets/fonts"
        config.assets.paths << "#{Engine.root}/app/assets/images"
        
        ::ActiveModel::ArraySerializer.root = false
      end
    end
  end
end
