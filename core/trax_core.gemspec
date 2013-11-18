$:.push File.expand_path("../lib", __FILE__)
version = File.read(File.expand_path("../../TRAX_VERSION", __FILE__)).strip
# Describe your gem and declare its dependencies:

Gem::Specification.new do |s|
  s.name        = "trax_core"
  s.version     = version
  s.authors     = ["Jason Ayre"]
  s.email       = ["jasonayre@gmail.com"]
  s.homepage    = "http://www.github.com/jasonayre/trax"
  s.summary     = "Rails CMS/Blog"
  s.description = "Rails CMS/Blog"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]

  s.require_path = 'lib'

  s.add_dependency "rails", "~> 4.0.1"
  s.add_dependency "devise"
  s.add_dependency "activeadmin"
end
