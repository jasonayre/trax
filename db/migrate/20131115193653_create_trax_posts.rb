class CreateTraxPosts < ActiveRecord::Migration
  def change
    create_table :trax_posts do |t|
      t.uuid :author_id
      t.uuid :category_id
      t.uuid :channel_id
      t.uuid :site_id
      t.uuid :last_edited_by
      t.string :title
      t.string :permalink
      t.text :body
      t.datetime :last_edited_at
      t.datetime :published_at
      t.string :status

      t.timestamps
    end
    add_index :trax_posts, :author_id
    add_index :trax_posts, :category_id
    add_index :trax_posts, :channel_id
    add_index :trax_posts, :site_id
    add_index :trax_posts, :last_edited_by
    add_index :trax_posts, :title
    add_index :trax_posts, :permalink
    add_index :trax_posts, :last_edited_at
    add_index :trax_posts, :published_at
    add_index :trax_posts, :status
  end
end
