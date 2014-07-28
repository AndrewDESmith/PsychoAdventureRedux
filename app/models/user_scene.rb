class UserScene < ActiveRecord::Base
	belongs_to :user
	belongs_to :scene
end
