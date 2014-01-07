class TournamentsController < ApplicationController

	def index
		@tournaments = Tournament.all
	end

	def new
		@tournament = Tournament.new
	end

	def show
		@tournament = Tournament.find(params[:id])
	end

	def create
		player_name = nil
		params[:incoming].each_line do |line|
			next if line.length < 31
			# Event tour week year finish "rank points" weight "adjusted points" rank

			cells = line.split("\t")
			# Take out the first entry if it's just a blank string
			cells.shift if cells[0] == ""
			next if cells[0] == ""
			if cells[0].index("Official World Golf Ranking for ") == 0
				player_name = cells[0][32..cells[0].length-1]
			else
				weight = cells[12].to_f
				next if weight < 0.1

				# Find the event name and the weight
#				puts cells[0] + " " + weight.to_s
				t = Tournament.find_or_initialize_by(name: cells[0])
				# Test to see if the weight isn't consistent
				if !t.new_record? && t.weight != weight
					puts "********** Weight difference!!! " + t.name + " old: " + t.weight.to_s + " new: " + weight.to_s
				else
					t.weight = weight
					t.save
				end
				if player_name
					# Cool, we can associate this player with their score and such
					p = Player.find_or_create_by(name: player_name)
					# And put their points in for this tournament
					pt = Point.find_or_initialize_by(player_id: p.id, tournament_id: t.id)
					if pt.new_record?
						pt.amount = cells[10].to_f
						puts "^^^^^^^^^ " + cells[10]
						pt.save
					end
				end
			end
		end

		# @tournament = Tournament.new(params[:tournament].permit(:name))
		# @tournament.save
		redirect_to tournaments_path
	end

	def edit
		@tournament = Tournament.find(params[:id])

	end

	def update
		@tournament = Tournament.find(params[:id])
		if @tournament.update_attributes(params[:tournament].permit(:name))
			redirect_to @tournament
		else 
			render "edit"
		end
	end

	def destroy
		Tournament.find(params[:id]).destroy
		redirect_to tournaments_url
	end

end