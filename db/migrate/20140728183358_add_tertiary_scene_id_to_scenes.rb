class AddTertiarySceneIdToScenes < ActiveRecord::Migration
  def change
    add_column :scenes, :tertiary_scene_id, :integer
  end
end
