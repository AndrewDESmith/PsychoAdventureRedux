class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.string :character_name
      t.text :note

      t.timestamps
    end
  end
end
