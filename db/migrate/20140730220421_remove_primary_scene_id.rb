class RemovePrimarySceneId < ActiveRecord::Migration
  def change
  	remove_column :scenes, :primary_scene_id, :integer
  end
end
