class CreateTraxTreeNodes < ActiveRecord::Migration
  def change
    create_table :trax_tree_nodes do |t|
      t.uuid :menu_id
      t.string :label
      t.string :href
      t.string :value
      t.string :css_class

      t.timestamps
    end
    add_index :trax_tree_nodes, :menu_id
  end
end
