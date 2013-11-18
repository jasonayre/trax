# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :channel, :class => '::Trax::Channel' do
    site
    name "MyString"
    details "MyText"
    description "MyText"
    short_description "MyText"
  end
  
  factory :child_channel, :class => '::Trax::Channel' do
    site
    # association :parent, :factory => :channel
    name "My String"
    details "My details"
    description "My Description"
    short_description "My Text"
  end
end
