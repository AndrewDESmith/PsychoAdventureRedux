class AddReferenceToScenes < ActiveRecord::Migration
  def change
  	drop_table :scenes

  	create_table :scenes do |t|
      t.date :date
      t.time :time
      t.string :location
      t.text :story_body
      t.references :parent_scene
      t.boolean :relevant_clue
      t.string :choice
      t.timestamps
    end

  end
end
