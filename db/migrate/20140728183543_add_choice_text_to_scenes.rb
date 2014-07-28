class AddChoiceTextToScenes < ActiveRecord::Migration
  def change
    add_column :scenes, :choice_text, :text
  end
end
