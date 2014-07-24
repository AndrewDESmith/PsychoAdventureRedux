# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

class AddInitialScenes < ActiveRecord::Migration
	def up
		Scene.create(date: "July 1, 19XX", time: "12:00am", location: "Planet Earth", story_body: "Test seed story_body entry.", relevant_clue: false)
	end

	def down
		Scene.delete_all
	end
end