class CreateUserScenes < ActiveRecord::Migration
  def change
    create_table :user_scenes do |t|
      t.integer :user_id
      t.integer :scene_id

      t.timestamps
    end
  end
end
