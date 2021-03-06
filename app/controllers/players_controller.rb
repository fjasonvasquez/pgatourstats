class PlayersController < ApplicationController

	def index
		@players = Player.all
	end

	def new
		@player = Player.new
	end



	def show
		@player = Player.find(params[:id])
	end

	def create
		@player = Player.new(params[:player].permit(:name))
		@points = Point.new(amount: params[:player][:points])
		@player.points << @points
		@tournaments = Tournament.new(params[:player][:tournaments])
		@player.tournaments << @tournaments
		# STRONG PARAMS HERE
		@player.save
		redirect_to players_path
	end

	def edit
		@player = Player.find(params[:id])

	end

	def update
		@player = Player.find(params[:id])
		if @player.update_attributes(params[:player].permit(:name))
			redirect_to @player
		else 
			render "edit"
		end
	end

	def destroy
		Player.find(params[:id]).destroy
		redirect_to players_url
	end

end