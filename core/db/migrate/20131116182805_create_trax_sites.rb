class CreateTraxSites < ActiveRecord::Migration
  def change
    create_table :trax_sites, :id => :uuid do |t|
      t.uuid :theme_id
      t.boolean :active
      t.boolean :is_default
      t.string :name
      t.text :details
      t.text :description
      t.string :host
      t.string :routing_strategy
      t.timestamps
    end
    add_index :trax_sites, :name
    add_index :trax_sites, :host
    add_index :trax_sites, :is_default
    add_index :trax_sites, :theme_id
    add_index :trax_sites, :routing_strategy
    add_index :trax_sites, :active
  end
end
