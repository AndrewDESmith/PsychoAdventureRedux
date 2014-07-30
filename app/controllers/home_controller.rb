class HomeController < ApplicationController
	skip_before_filter :require_login

	def home
		@scenes = Scene.all
	end
end
