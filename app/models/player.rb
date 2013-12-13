class Player < ActiveRecord::Base
	
	
	has_many :points
	has_many :tournaments, through: :points, class_name: "Tournament"
end
