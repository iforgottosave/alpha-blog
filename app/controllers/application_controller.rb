class ApplicationController < ActionController::Base

  # helper_method enables helpers to access controllers
  helper_method :current_user, :logged_in?

  def current_user
    # ||= if user not found at time of request, THEN...
    @current_user ||= User.find(session[:user_id]) if session[:user_id] 
  end

  def logged_in?
    # !! boolean or
    !!current_user
  end

end
