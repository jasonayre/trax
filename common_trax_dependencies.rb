# By placing all of Spree's shared dependencies in this file and then loading
# it for each component's Gemfile, we can be sure that we're only testing just
# the one component of Spree.
source 'https://rubygems.org'

platforms :ruby do
  gem 'pg'
end

platforms :jruby do
  gem 'activerecord-jdbcpostgresql-adapter'
end

gem 'coffee-rails', '~> 4.0.0'
gem 'sass-rails', '~> 4.0.0'
# s.add_development_dependency 'rspec-rails'
# s.add_development_dependency 'capybara'
# s.add_development_dependency 'factory_girl_rails'
# s.add_development_dependency 'pg'
# 
# s.add_development_dependency "rspec-pride"
# s.add_development_dependency "shoulda-matchers"
group :test do
  gem 'rspec-rails'
  gem 'capybara'
  gem 'factory_girl_rails'
  gem 'pg'
  gem 'rspec-pride'
  gem 'shoulda-matchers'
  gem 'pry'
end

gemspec
