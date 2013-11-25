class CreateTraxMenuItems < ActiveRecord::Migration
  def change
    create_table :trax_menu_items, :id => :uuid do |t|
      t.uuid :menu_id
      t.string :label
      t.string :name
      t.string :title
      t.string :resource_type
      t.string :href
      t.uuid :resource_id
      t.uuid :parent_id
      t.integer :lft
      t.integer :rgt
      t.integer :depth
      t.timestamps
    end
    
    add_index :trax_menu_items, :menu_id
    add_index :trax_menu_items, :parent_id
    add_index :trax_menu_items, :lft
    add_index :trax_menu_items, :rgt
    add_index :trax_menu_items, :depth
    add_index :trax_menu_items, :resource_type
  end
end
