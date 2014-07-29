class AddTrackingToUserScenes < ActiveRecord::Migration
  def change
    add_column :user_scenes, :tracking, :integer
  end
end
