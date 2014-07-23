class AddRelevantClueToScenes < ActiveRecord::Migration
  def change
    add_column :scenes, :relevant_clue, :boolean
  end
end
