# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Scene.create(location: "Planet Earth", time: "12:00am", date: "July 1, 19XX", story_body: "Test seed story_body entry.", choice_text: "Example Choice 1",primary_scene_id: 1, secondary_scene_id: 2, tertiary_scene_id: 1, relevant_clue: false, UserScene.scene_id: 121)

Scene.create(location: "Planet Mars",  time: "8:00am", date: "July 1, 20XX", story_body: "Test seed story_body entry numero dos.", choice_text: "Example Choice 2", primary_scene_id: 1, secondary_scene_id: 2, tertiary_scene_id: 2, relevant_clue: true, UserScene.scene_id: 122)