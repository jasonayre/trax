$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "trax/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "trax"
  s.version     = Trax::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Trax."
  s.description = "TODO: Description of Trax."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", "~> 4.0.1"
  s.add_dependency "devise"
  
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'factory_girl_rails'
  s.add_development_dependency "activerecord-jdbcpostgresql-adapter"
  s.add_development_dependency "rspec-pride"
  s.add_development_dependency "shoulda-matchers"
end
