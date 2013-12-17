class PointsController < ApplicationController

	def index
		@points = Point.all
	end

	def new
		@point = Point.new
	end

	def show
		@point = Point.find(params[:id])
	end

	def create
		@point = Point.new(params[:point].permit(:amount))
		@point.save
		redirect_to points_path
	end

	def edit
		@point = Point.find(params[:id])

	end

	def update
		@point = Point.find(params[:id])
		if @point.update_attributes(params[:player].permit(:name))
			redirect_to @point
		else 
			render "edit"
		end
	end

	def destroy
		Point.find(params[:id]).destroy
		redirect_to points_url
	end

end