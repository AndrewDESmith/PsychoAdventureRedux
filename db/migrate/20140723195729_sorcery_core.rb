class SorceryCore < ActiveRecord::Migration
  def change
  	drop_table :users

    create_table :users do |t|
      t.string :character_name
      t.text :note 
      t.string :email,            :null => false
      t.string :crypted_password, :null => false
      t.string :salt,             :null => false

      t.timestamps
    end

    add_index :users, :email, unique: true
  end
end