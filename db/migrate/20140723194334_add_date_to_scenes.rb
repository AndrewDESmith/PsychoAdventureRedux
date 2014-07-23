class AddDateToScenes < ActiveRecord::Migration
  def change
    add_column :scenes, :date, :string
  end
end
