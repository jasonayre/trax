class CreateTraxSites < ActiveRecord::Migration
  def change
    create_table :trax_sites, :id => :uuid do |t|
      t.string :name
      t.text :details
      t.text :description
      t.string :host
      t.boolean :is_default
      t.uuid :theme_id

      t.timestamps
    end
    add_index :trax_sites, :name
    add_index :trax_sites, :host
    add_index :trax_sites, :is_default
    add_index :trax_sites, :theme_id
  end
end
