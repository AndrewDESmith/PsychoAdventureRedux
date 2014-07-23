class RemoveDateFromScenes < ActiveRecord::Migration
  def change
    remove_column :scenes, :date, :date
  end
end
