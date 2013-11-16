# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :trax_site, :class => 'Site' do
    name "MyString"
    details "MyText"
    description "MyText"
    url "MyString"
    is_default false
    theme_id ""
  end
end
