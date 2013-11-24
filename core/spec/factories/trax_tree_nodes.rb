# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :tree_node, :class => '::Trax::TreeNode' do
    # menu
    label "Menu Item 1"
    href "MyString"
    value "blah"
    css_class "root"
    
    ignore do
      nodes_count 5
    end
    
    factory :tree_node_with_children do
      after(:create) do |tree_node, evaluator|
        FactoryGirl.create_list(:tree_node, evaluator.nodes_count, :parent => tree_node.uuid, :name => "Child Node 1")
      end
    end
  end
  

end
