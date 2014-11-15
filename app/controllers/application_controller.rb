class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected

  	def restrict_access
  		if !current_user
  			flash[:alert] = "You must log in to access this feature!"
  			redirect_to new_session_path
  		end
  	end

  	def restrict_admin_access
  		if !current_user.admin
  			flash[:alert] = "you must be an admin!"
  			redirect_to new_session_path
  		end
  	end
  
    def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end 

    helper_method :current_user
end
