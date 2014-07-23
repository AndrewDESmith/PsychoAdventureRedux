class Scene < ActiveRecord::Base
	has_many :child_scenes, class_name: "Scene", foreign_key: "parent_scene_id"
	belongs_to :parent_scene, class_name: "Scene"
end
