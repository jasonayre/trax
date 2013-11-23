class CreateTraxThemes < ActiveRecord::Migration
  def change
    create_table :trax_themes, :id => :uuid do |t|
      t.string :name
      t.string :version
      t.string :preview_url
      t.string :github_url
      t.boolean :installed
      t.timestamps
    end
    add_index :trax_themes, :name
    add_index :trax_themes, :version
    add_index :trax_themes, :installed
  end
end
