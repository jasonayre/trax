module Trax
  module Frontend
    class Engine < ::Rails::Engine


      initializer :trax_frontend do
        puts "INITIALIZING TRAX FRONTEND"
      end
    end
  end
end
