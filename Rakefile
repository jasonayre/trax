# begin
#   require 'bundler/setup'
# rescue LoadError
#   puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
# end
# 
# require 'rdoc/task'
# 
# RDoc::Task.new(:rdoc) do |rdoc|
#   rdoc.rdoc_dir = 'rdoc'
#   rdoc.title    = 'Trax'
#   rdoc.options << '--line-numbers'
#   rdoc.rdoc_files.include('README.rdoc')
#   rdoc.rdoc_files.include('lib/**/*.rb')
# end
# 
# APP_RAKEFILE = File.expand_path("../spec/traxblog/Rakefile", __FILE__)
# load 'rails/tasks/engine.rake'
# 
# 
# 
# Bundler::GemHelper.install_tasks
TRAX_ROOT_DIR = File.join(File.dirname(__FILE__))

#!/usr/bin/env rake
begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end
# require 'rubygems'
# spec = eval(File.read('trax.gemspec'))
# Gem::PackageTask.new(spec) do |pkg|
#   pkg.gem_spec = spec
# end
# APP_RAKEFILE = File.expand_path("../spec/traxblog/Rakefile", __FILE__)
# load 'rails/tasks/engine.rake'
Bundler::GemHelper.install_tasks
Dir[File.join(File.dirname(__FILE__), 'tasks/**/*.rake')].each {|f| load f }
# require 'rspec/core'
# require 'rspec/core/rake_task'
# desc "Run all specs in spec directory (excluding plugin specs)"
# RSpec::Core::RakeTask.new(:spec => 'app:db:test:prepare')
# task :default => :spec

desc 'Clean & Compile the protobuf definitions to ruby classes. Pass NO_CLEAN if you do not want to clean first.'
task :compile, [ :out ] do |t, args|
  ::Rake::Task[:clean].invoke unless ENV['NO_CLEAN']
  args.with_defaults(:out => 'lib')
  cmd = "protoc --ruby_out=#{args[:out]} -I ./definitions definitions/trax/*.proto definitions/trax/**/*.proto"
  puts cmd
  exec(cmd)
end

desc 'Clean the generated *.pb.rb files'
task :clean do
  puts 'Cleaning compiled ruby files'
  file_glob = ::File.expand_path('../lib/trax/**/*.pb.rb', __FILE__)
  ::Dir[file_glob].each { |file| ::FileUtils.rm(file) }
end

desc 'Clean & Compile the protobuf definitions to ruby classes. Pass NO_CLEAN if you do not want to clean first.'
task :compilejs, [ :out ] do |t, args|
  ::Rake::Task[:cleanjs].invoke unless ENV['NO_CLEAN']
  args.with_defaults(:out => 'lib')
  puts File.join(File.dirname(__FILE__))
  cmd = "node ~/node_modules/protobufjs/bin/proto2js definitions/trax.proto -class=trax > js/trax.js"
  puts cmd
  exec(cmd)
end

desc 'Clean the generated trax.js file'
task :cleanjs do
  puts 'Cleaning compiled js files'
  file_glob = ::File.expand_path('../js/*.js', __FILE__)
  ::Dir[file_glob].each { |file| ::FileUtils.rm(file) }
end

