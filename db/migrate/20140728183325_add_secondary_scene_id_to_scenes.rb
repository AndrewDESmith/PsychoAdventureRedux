class AddSecondarySceneIdToScenes < ActiveRecord::Migration
  def change
    add_column :scenes, :secondary_scene_id, :integer
  end
end
