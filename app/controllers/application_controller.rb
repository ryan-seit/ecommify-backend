class ApplicationController < ActionController::Base

  # prevent Rails from using its authenticity token (since backend is acting as an API to avoid 'forbidden' parameters)
  protect_from_forgery with: :exception

  # make sure methods defined below are passed to all other controllers
  helper_method :login!, :logged_in?, :current_user, :authorized_user?, :logout!

  # create a new session
  def login!
    session[:user_id] = @user.id
  end

  # check for active session
  def logged_in?
    !!session[:user_id]
  end

  # authorize current_user based on session data
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  # authorize current_user based on session data
  def authorized_user?
    @user == current_user
  end

  # delete current session
  def logout!
    session.clear
  end

end
