module Trax
  module Admin
    class Engine < ::Rails::Engine
      isolate_namespace Trax

      initializer :trax_admin do
        puts "INITIALIZING TRAX admin"
      end
    end
  end
end
