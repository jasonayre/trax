# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :trax_theme, :class => 'Theme' do
    name "MyString"
    version "MyString"
  end
end
