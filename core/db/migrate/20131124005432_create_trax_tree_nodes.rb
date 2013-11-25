class CreateTraxTreeNodes < ActiveRecord::Migration
  def change
    create_table :trax_tree_nodes, :id => :uuid do |t|
      t.uuid :menu_id
      t.string :label
      t.string :name
      t.string :href
      t.string :value
      t.string :css_class
      t.uuid :resource_id
      t.uuid :parent_id
      t.integer :lft
      t.integer :rgt
      t.integer :depth
      t.timestamps
    end
    
    add_index :trax_tree_nodes, :menu_id
    add_index :trax_tree_nodes, :parent_id
    add_index :trax_tree_nodes, :lft
    add_index :trax_tree_nodes, :rgt
  end
end
