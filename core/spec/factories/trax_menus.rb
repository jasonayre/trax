# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :menu, :class => '::Trax::Menu' do
    name "Primary Navigation"
    site
    
    factory :menu_with_children do
      #todo: debug, not working
      ignore do
        nodes_count = 5
      end
      
      after(:create) do |trax_menu, evaluator|
        ::FactoryGirl.create_list(:tree_node_with_children, 5, :menu => trax_menu.site, :menu => trax_menu)
      end
    end
  end
end
