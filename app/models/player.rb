class Player < ActiveRecord::Base
	require 'bcrypt'
	
	
	has_many :points
	has_many :tournaments, through: :points, class_name: "Tournament"
end
 
 