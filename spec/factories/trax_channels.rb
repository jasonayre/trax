# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :trax_channel, :class => 'Channel' do
    parent_id 1
    site_id 1
    slug "MyString"
    name "MyString"
    details "MyText"
    description "MyText"
    short_description "MyText"
    entries_use_slug false
  end
end
