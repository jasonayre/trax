$:.push File.expand_path("../lib", __FILE__)
version = File.read(File.expand_path("../../TRAX_VERSION", __FILE__)).strip
# Describe your gem and declare its dependencies:

Gem::Specification.new do |s|
  s.name        = "trax_core"
  s.version     = version
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Trax."
  s.description = "TODO: Description of Trax."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]
    # s.files        = Dir['LICENSE', 'README.md', 'app/**/*', 'config/**/*', 'lib/**/*', 'db/**/*', 'vendor/**/*']
  s.require_path = 'lib'

  s.add_dependency "rails", "~> 4.0.1"
  s.add_dependency "devise"
  s.add_dependency "activeadmin"
  

  # s.add_development_dependency 'rspec-rails'
  # s.add_development_dependency 'capybara'
  # s.add_development_dependency 'factory_girl_rails'
  # s.add_development_dependency 'pg'
  # 
  # s.add_development_dependency "rspec-pride"
  # s.add_development_dependency "shoulda-matchers"
end
