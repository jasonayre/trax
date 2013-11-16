module Trax
  class Engine < ::Rails::Engine
    isolate_namespace Trax
    
    config.generators do |g|
      g.test_framework :rspec, :fixture => false
      g.fixture_replacement :factory_girl, :dir => 'spec/factories'
      g.assets false
      g.helper false
    end
    
    initializer :trax do
      puts "TRAX INITIALIZED"
      puts ::Dir[::File.dirname(__FILE__) + '/admin'].inspect
      puts ::Dir[::File.dirname(__FILE__)].inspect
      ::ActiveAdmin.application.load_paths += ::Dir[::File.dirname(__FILE__) + '/admin']
    end
  end
end
