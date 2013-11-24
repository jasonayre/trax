class CreateTraxMenuItems < ActiveRecord::Migration
  def change
    create_table :trax_menu_items do |t|
      t.uuid :menu_id
      t.uuid :parent_id
      t.string :label
      t.string :path
      t.integer :level
      t.string :title
      t.string :resource_type

      t.timestamps
    end
    add_index :trax_menu_items, :menu_id
    add_index :trax_menu_items, :parent_id
    add_index :trax_menu_items, :level
    add_index :trax_menu_items, :resource_type
  end
end
