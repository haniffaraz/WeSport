class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :logged_in?

  helper_method :logged_in?
  helper_method :current_user

  # def authenticate_current_user
  #   head :unauthorized if get_current_user.nil?
  # end



  def current_user
    return unless session[:user_id]
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !session[:user_id].nil?
    # !!session[:user_id]
  end

  # def authorize
  #  redirect_to '/login' unless current_user
  # end

end
