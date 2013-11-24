# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :trax_menu_item, :class => 'MenuItem' do
    menu_id ""
    parent_id ""
    label "MyString"
    path "MyString"
    level 1
    title "MyString"
  end
end
