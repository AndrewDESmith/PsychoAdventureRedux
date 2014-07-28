class AddPrimarySceneIdToScenes < ActiveRecord::Migration
  def change
    add_column :scenes, :primary_scene_id, :integer
  end
end
