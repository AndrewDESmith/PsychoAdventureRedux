class RemoveTimeFromScenes < ActiveRecord::Migration
  def change
    remove_column :scenes, :time, :time
  end
end
