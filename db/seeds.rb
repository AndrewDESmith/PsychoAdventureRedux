# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Scene.create(location: "Planet Earth", story_body: "Test seed story_body entry.", parent_scene_id: 1, time: "12:00am", date: "July 1, 19XX", relevant_clue: false)

Scene.create(location: "Planet Mars", story_body: "Test seed story_body entry numero dos.", parent_scene_id: 2, time: "8:00am", date: "July 1, 20XX", relevant_clue: true)

# User.create(character_name: "AndrewS", email: "andrews@email.com", crypted_password: "password", salt: nil, remember_me: nil, remember_me_token_expires_at: nil)

# User.create(character_name: "AndrewB", email: "andrewb@email.com", crypted_password: "password")

# User.create(character_name: "PatS", email: "pats@email.com", crypted_password: "password")