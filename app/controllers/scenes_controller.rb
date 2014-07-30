class ScenesController < ApplicationController

  def index
    @scenes = Scene.all
  end

  def show
  	@scene = Scene.find(params[:id])
    @clue_scenes = current_user.scenes.where(:relevant_clue => true)
  end

  def new
  	@scene = Scene.new
  end

  def create
  	@scene = Scene.new(scene_params)

  	if @scene.save
  		redirect_to scenes_url
  	else
  		render :new
  	end
  end

  def edit
  	@scene = Scene.find(params[:id])

  	if @scene
  		render :edit
  	else
  		flash("This scene id does not exist!")
  	end
  end

  def update
  	@scene = Scene.find(params[:id])

  	if @scene.update_attributes(scene_params)
  		redirect_to scene_path(@scene)
  	else
  		render :edit
  	end
  end

  def destroy
  	@scene = Scene.find(params[:id])
  	@scene.destroy
    redirect_to scenes_url
  end

  private
  def scene_params
  	params.require(:scene).permit(:date, :time, :location, :parent_scene_id, :choice, :story_body, :relevant_clue, :notebook_entry)
  end

end
