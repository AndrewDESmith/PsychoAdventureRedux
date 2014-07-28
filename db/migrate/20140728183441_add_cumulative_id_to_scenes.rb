class AddCumulativeIdToScenes < ActiveRecord::Migration
  def change
    add_column :scenes, :cumulative_id, :integer
  end
end
