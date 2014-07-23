class CreateScenes < ActiveRecord::Migration
  def change
    create_table :scenes do |t|
      t.date :date
      t.time :time
      t.string :location
      t.text :story_body

      t.timestamps
    end
  end
end
