class ApplicationController < ActionController::Base
	# Prevent CSRF attacks by raising an exception.
	# For APIs, you may want to use :null_session instead.
	protect_from_forgery with: :exception

	protected
		def authenticate_user
			if session[:st_user_id]
				# set current user object to @current_user object variable
				@current_user = Student.find session[:st_user_id]
				return true	
			else
				redirect_to(:controller => :welcome, :action => :login)
				return false
			end
		end
		
		def save_login_state
			if session[:st_user_id]
				redirect_to(:controller => :st_user_sessions, :action => :home)
				return false
			else
				return true
			end
		end
end
