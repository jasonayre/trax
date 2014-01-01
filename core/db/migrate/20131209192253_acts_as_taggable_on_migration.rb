class ActsAsTaggableOnMigration < ActiveRecord::Migration
  def self.up
    create_table :trax_tags, :id => :uuid do |t|
      t.string :name
    end

    create_table :trax_taggings, :id => :uuid do |t|
      t.uuid :tag_id
      t.uuid :taggable_id
      t.string :taggable_type
      t.uuid :tagger_id
      t.string :tagger_type
      t.string :context, :limit => 128

      t.datetime :created_at
    end

    add_index :trax_taggings, :tag_id
    add_index :trax_taggings, [:taggable_id, :taggable_type, :context], :name => :tag_type_context
  end

  def self.down
    drop_table :trax_taggings
    drop_table :trax_tags
  end
end