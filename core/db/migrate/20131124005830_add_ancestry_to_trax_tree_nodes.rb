class AddAncestryToTraxTreeNodes < ActiveRecord::Migration
  def change
    add_column :trax_tree_nodes, :ancestry, :string
    add_index :trax_tree_nodes, :ancestry
  end
end
