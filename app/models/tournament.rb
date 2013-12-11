class Tournament < ActiveRecord::Base
	require 'bcrypt'

	
	has_many :points
	has_many :players, through: :points, class_name: "Player"
end
