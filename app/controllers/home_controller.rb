class HomeController < ApplicationController
	skip_before_filter :require_login
	
	def home
	end
end
