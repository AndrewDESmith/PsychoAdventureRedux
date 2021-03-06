class UserSessionsController < ApplicationController
  skip_before_filter :require_login, except: [:destroy]

  def new
    @user = User.new
  end

  def create
  	@scenes = Scene.all
    if @user = login(params[:email], params[:password], params[:remember_me])
      redirect_back_or_to "/scenes/#{@scenes.first.id}", notice: 'Login successful'
    else
      flash.now[:alert] = 'Login failed'
      render action: 'new'
    end
  end

  def destroy
    logout
    redirect_to root_url, notice: 'Logged out!'
  end
end
