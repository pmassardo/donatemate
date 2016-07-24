class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def require_login
    unless current_user
      redirect_to new_session_path, alert: "Please Login or Sign Up to Continue"
    end
  end
  helper_method :require_login
  helper_method :current_user
end
