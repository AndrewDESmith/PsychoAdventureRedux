class Scene < ActiveRecord::Base
	has_many :child_scenes, class_name: "Scene", foreign_key: "parent_scene_id"
	belongs_to :parent_scene, class_name: "Scene"
	has_many :user_scenes

# Export database entries to CSV files?

	# def self.to_csv(options = {})
	# 	CSV.generate(options) do |csv|
	# 		csv << column_names
	# 		all.each do |scene|
	# 			csv << scene.attributes.values_at(*column_names)
	# 		end
	# 	end
	# end

  def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
			scene = find_by_id(row["id"]) || new
			scene.attributes = row.to_hash.slice(*:date, :time, :location, :parent_scene_id, :choice, :story_body, :relevant_clue, :notebook_entry)
			scene.save!
		end
	end

end
