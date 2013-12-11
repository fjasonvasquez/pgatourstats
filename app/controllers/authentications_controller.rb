class AuthenticationsController < ApplicationController
	before_action :authenticate_user, only: [:destroy]

	def new
		#User logged in?
		if current_user #Already logged in. Can't create same user.
			redirect_to root_url
		else
			@user = User.new
		end
	end

	def create
		if user = User.find_by(email: params[:user][:email])
			#authenticate user
			if user.authenticate(params[:user][:password]) && if session[:user_id] = user.user_id 
				redirect_to root_url
			else
				flash.now.alert = "There was something wrong with your login. Please try again."
				redirect_to root_url
			end
		end
	end
end

	def destroy
		session[:user_id] = nil
		redirect_to root_url,
		notice: "Successfully signed out."
	end
end