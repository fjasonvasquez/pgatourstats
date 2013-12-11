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
		@tournament = Tournament.new(params[:tournament].permit(:name))
		@tournament.save
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