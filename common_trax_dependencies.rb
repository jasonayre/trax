source 'https://rubygems.org'

platforms :ruby do
  gem 'pg'
end

platforms :jruby do
  gem 'activerecord-jdbcpostgresql-adapter'
end

gem "rails", "~> 4.0.1"
gem 'coffee-rails', '~> 4.0.0'
gem 'sass-rails', '~> 4.0.0'
gem "activeadmin", github: "gregbell/active_admin"
gem 'formtastic-bootstrap'
gem 'protobuf'
gem "awesome_nested_set"
gem "the_sortable_tree"
gem 'awesome_print'

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
