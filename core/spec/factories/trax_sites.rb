# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :site, :class => '::Trax::Site' do
    host "bnw.io"
    name "Brave New Web"
    details "My Details"
    description "My Description"
    is_default true
  end
end
