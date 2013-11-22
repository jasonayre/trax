$:.push File.expand_path("../lib", __FILE__)
version = File.read(File.expand_path('../TRAX_VERSION',__FILE__)).strip

Gem::Specification.new do |s|
  s.name        = "trax"
  s.version     = version
  s.authors     = ["Jason Ayre"]
  s.email       = ["jasonayre@gmail.com"]
  s.homepage    = "http://www.github.com/jasonayre/trax"
  s.summary     = "Rails CMS/Blog"
  s.description = "Rails CMS/Blog"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]
  
  s.add_dependency "trax_core", version
  s.add_dependency "trax_backend", version
end
