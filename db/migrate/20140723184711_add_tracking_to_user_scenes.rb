class AddTrackingToUserScenes < ActiveRecord::Migration
  def change
    add_column :user_scenes, :tracking, :float
  end
end
