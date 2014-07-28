class UserScenesController < ApplicationController
	def create
		@user_scene = UserScene.new
		@user_scene.user = current_user
		@user_scene.scene_id = params[:scene_id]

		if @user_scene.save
			redirect_to scene_path(params[:scene_id])
		else
			# render :new
		end
	end
end
