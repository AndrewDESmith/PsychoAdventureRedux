class AddNotebookEntryToScenes < ActiveRecord::Migration
  def change
    add_column :scenes, :notebook_entry, :text
  end
end
