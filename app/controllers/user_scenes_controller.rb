class UserScenesController < ApplicationController
	def create
		# if the current scene the user is on has already been logged in database, then it won't be repeated
		# 1. find scene_id in database of all users' scenes
		# 1MMM. find the current Scene among all Scenes this user has visited, if it exists
		@existing_scene = current_user.scenes.find(params[:scene_id])

		# 2. If no existing scene was found, create a new one
		if !@existing_scene
			@user_scene = UserScene.new
			@user_scene.user = current_user
			@user_scene.scene_id = params[:scene_id]


			if @user_scene.save
				redirect_to scene_path(params[:scene_id])
			else
				# render :new
			end
		else
			redirect_to scene_path(params[:scene_id])
		end
	end
end
