# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# new school: we'll be reading in from story_db_file.csv
# let's assume this file is in lib/story/story_db_file.csv

Scene.delete_all

previous_scenes = {}

CSV.foreach(Rails.root.join('lib', 'story_db.csv'), headers: true) do |row|
	new_scene = Scene.create!( row.to_hash.symbolize_keys.slice(:date, :time, :location, :choice, :story_body, :relevant_clue, :notebook_entry) )

	# 1. Check if this row has a parent_scene_id
	if row['parent_scene_id']
		# 2. If it does, look up parent_scene_id in previous_scenes hash
		if previous_scenes[row['parent_scene_id']]
			# 3. Find the Scene (Scene.find) with the ID we get from previous_scenes hash
			parent_scene = Scene.find_by_id( previous_scenes[row['parent_scene_id']] )

			if parent_scene
				new_scene.parent_scene = parent_scene
				new_scene.save!
			end
		end

	end

	# Add the current scene to the previous_scenes hash, with a value of the ID in our database for this scene
	previous_scenes[ row['scene_id'] ] = new_scene.id
	print '.'
end

puts


# scene_id from file = 12
# new_scene created has id of 48
# scene_ids[12] = 48