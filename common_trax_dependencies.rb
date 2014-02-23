source 'https://rubygems.org'
source 'https://rails-assets.org'
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
gem "active_model_serializers"
gem "acts-as-taggable-on"
gem 'draper', '~> 1.3'
gem 'quiet_assets'

#admin dependencies, need to move this once I figure out issues
gem 'rails-assets-angular'
gem 'rails-assets-angularjs-rails-resource'
gem 'rails-assets-angular-animate'
gem 'rails-assets-angular-sanitize'
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
