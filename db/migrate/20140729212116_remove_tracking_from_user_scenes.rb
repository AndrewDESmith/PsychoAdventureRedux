class RemoveTrackingFromUserScenes < ActiveRecord::Migration
  def change
    remove_column :user_scenes, :tracking, :float
  end
end
