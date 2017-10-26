class ApiController < ActionController::Base
	protect_from_forgery with: :null_session
  skip_before_action :verify_authenticity_token

  private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

end