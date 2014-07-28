# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Scene.create(location: "Planet Mars", story_body: "Test seed story_body entry numero dos.", parent_scene_id: 1, time: "8:00am", date: "July 1, 20XX", relevant_clue: true)
Scene.create(location: "Planet Mercury", story_body: "Test seed story_body entry numero tres.", parent_scene_id: 1, time: "9:00am", date: "July 2, 20XX", relevant_clue: false)
Scene.create(location: "Planet Venus", story_body: "Test seed story_body entry numero quatro.", parent_scene_id: 1, time: "10:00am", date: "July 3, 20XX", relevant_clue: false)
Scene.create(location: "Planet Jupiter", story_body: "Test seed story_body entry numero 5.", parent_scene_id: 2, time: "8:00am", date: "July 1, 20XX", relevant_clue: true)
Scene.create(location: "Planet Saturn", story_body: "Test seed story_body entry numero 6.", parent_scene_id: 2, time: "8:00am", date: "July 1, 20XX", relevant_clue: true)
Scene.create(location: "Planet Neptune", story_body: "Test seed story_body entry numero 7.", parent_scene_id: 2, time: "8:00am", date: "July 1, 20XX", relevant_clue: true)
