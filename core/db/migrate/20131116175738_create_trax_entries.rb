class CreateTraxEntries < ActiveRecord::Migration
  def change
    create_table :trax_entries, :id => :uuid do |t|
      t.string :title
      t.string :slug
      t.string :preview
      t.text :body
      t.string :status
      t.datetime :status_last_changed_at
      t.datetime :published_at
      t.string :routing_strategy
      t.uuid :last_edited_by
      t.uuid :parent_id
      t.uuid :user_id
      t.uuid :channel_id
      t.uuid :site_id
      t.timestamps
    end
    add_index :trax_entries, :title
    add_index :trax_entries, :slug
    add_index :trax_entries, :status
    add_index :trax_entries, :status_last_changed_at
    add_index :trax_entries, :published_at
    add_index :trax_entries, :routing_strategy
    add_index :trax_entries, :last_edited_by
    add_index :trax_entries, :parent_id
    add_index :trax_entries, :user_id
    add_index :trax_entries, :channel_id
    add_index :trax_entries, :site_id
  end
end
