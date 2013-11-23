# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :trax_theme, :class => 'Theme' do
    name "bootstrap3"
    version "0.0.1"
    github_url "jasonayre/trax_boostrap3"
    installed false
  end
end
