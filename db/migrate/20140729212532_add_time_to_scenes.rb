class AddTimeToScenes < ActiveRecord::Migration
  def change
    add_column :scenes, :time, :string
  end
end
