class User < ActiveRecord::Base
  authenticates_with_sorcery!
  has_many :user_scenes

  validates :password, length: { minimum: 8 }
  validates :password, confirmation: true
  validates :password_confirmation, presence: true

  validates :email, uniqueness: true

  # def self.import(file)
  # 	CSV.foreach(file.path, headers: true) do |row|
  # 			User.create! row.to_hash
  # 	end
  # end
end
