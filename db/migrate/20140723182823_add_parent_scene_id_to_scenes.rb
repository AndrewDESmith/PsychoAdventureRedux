class AddParentSceneIdToScenes < ActiveRecord::Migration
  def change
    add_column :scenes, :parent_scene_id, :integer
  end
end
