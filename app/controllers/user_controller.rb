class UserController < ApplicationController
	before_filter :save_login_state, :only => [:new, :create]

	def new
		@user = Student.new
	end

	def create
		# @user = Student.new(params[:user])
		@user = Student.new(user_params)
		if @user.save
			flash[:notice] = "You signed up successfully"
			flash[:color]= "valid"
		else
			flash[:notice] = "Form is invalid"
			flash[:color]= "invalid"
		end
		# render nothing: true
		render "welcome/login"
	end

	private
		def user_params
			params.require(:user).permit(:firstName, :lastname, :email, :username, :password, :password_confirmation)
		end
end
