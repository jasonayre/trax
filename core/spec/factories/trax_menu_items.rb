# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :menu_item, :class => '::Trax::MenuItem' do
    menu
    sequence :label do |n|
      "Menu Item #{n}"
    end
    name "Root Item"
    path nil
    
    factory :menu_item_tree do
      after(:create) do |menu_item, evaluator|
        FactoryGirl.create_list(:menu_item, 5, :name => "Child Node Level1", :parent_id => menu_item.id, :menu_id => menu_item.menu_id).each do |child|
          FactoryGirl.create_list(:menu_item, 5, :name => "Child Node Level2", :parent_id => child.id, :menu_id => child.menu_id)
        end
      end
    end
  end
end
