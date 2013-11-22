class CreateTraxThemes < ActiveRecord::Migration
  def change
    create_table :trax_themes, :id => :uuid do |t|
      t.string :name
      t.string :version
      t.string :github
      t.timestamps
    end
    add_index :trax_themes, :name
    add_index :trax_themes, :version
  end
end
