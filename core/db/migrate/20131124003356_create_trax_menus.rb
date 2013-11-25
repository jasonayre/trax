class CreateTraxMenus < ActiveRecord::Migration
  def change
    create_table :trax_menus, :id => :uuid do |t|
      t.string :name
      t.string :template
      
      t.uuid :site_id

      t.timestamps
    end
    add_index :trax_menus, :name
    add_index :trax_menus, :site_id
  end
end
