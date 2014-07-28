class RemoveParentSceneIdFromScenes < ActiveRecord::Migration
  def change
    remove_column :scenes, :parent_scene_id, :integer
  end
end
