class Point < ActiveRecord::Base
	require 'bcrypt'
	
  belongs_to :player
  belongs_to :tournament
end
