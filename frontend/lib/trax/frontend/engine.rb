module Trax
  module Frontend
    class Engine < ::Rails::Engine
      isolate_namespace Trax

      initializer :trax_frontend do
        puts "INITIALIZING TRAX FRONTEND"
      end
    end
  end
end
