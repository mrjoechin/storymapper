class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :title
      t.integer :story_type
      t.references :storymap, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
