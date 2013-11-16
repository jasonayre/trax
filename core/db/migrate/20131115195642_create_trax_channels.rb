class CreateTraxChannels < ActiveRecord::Migration
  def change
    create_table :trax_channels, :id => :uuid do |t|
      t.uuid :parent_id
      t.uuid :site_id
      t.string :slug
      t.string :name
      t.text :details
      t.text :description
      t.text :short_description
      t.boolean :entries_use_slug

      t.timestamps
    end
    add_index :trax_channels, :parent_id
    add_index :trax_channels, :site_id
    add_index :trax_channels, :slug
    add_index :trax_channels, :name
    add_index :trax_channels, :entries_use_slug
  end
end
