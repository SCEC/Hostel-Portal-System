class StUserSessionsController < ApplicationController

	before_filter :authenticate_user, :only => [:home, :profile, :setting]
	before_filter :save_login_state, :only => [:login, :login_attempt]

	def login
	end

	def logout
		session[:st_user_id] = nil
		redirect_to :controller => :welcome, :action => :login
	end

	def home
	end

	def profile
	end

	def setting
	end

	def login_attempt
		authorized_user = Student.authenticate(params[:username_or_email],params[:login_password])

		if authorized_user
			session[:st_user_id] = authorized_user.id
			flash[:login_notice] = "Wow Welcome again, you last logged in as #{authorized_user.username}"
			redirect_to(:action => 'home')
		else
			flash[:login_notice] = "Invalid Username or Password"
			flash[:color]= "invalid"
			redirect_to :controller=> :welcome, :action => :login	
		end
	end
end
