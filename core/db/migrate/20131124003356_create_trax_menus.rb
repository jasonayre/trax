class CreateTraxMenus < ActiveRecord::Migration
  def change
    create_table :trax_menus do |t|
      t.string :name
      t.uuid :site_id

      t.timestamps
    end
    add_index :trax_menus, :name
    add_index :trax_menus, :site_id
  end
end
