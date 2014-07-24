class UsersController < ApplicationController
skip_before_filter :require_login, only: [:index, :new, :create]

def new
	@user = User.new
end

def create
  @user = User.new(user_params)
  	if @user.save
      auto_login(@user)
  		redirect_to scenes_url, :notice => "Successfully signed up!"
  	else
  		render "new"
  	end
end

private
  def user_params
  	params.require(:user).permit(:character_name, :email, :password, :password_confirmation)
  end
end
