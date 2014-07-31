class UserScenesController < ApplicationController
	def create
		@existing_scene = current_user.scenes.find(params[:scene_id])
		if !@existing_scene
			@user_scene.scene_id = params[:scene_id]

			@user_scene = UserScene.new
			@user_scene.user = current_user

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
