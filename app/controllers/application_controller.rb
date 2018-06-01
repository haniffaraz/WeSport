class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :logged_in?, :current_user


  def current_user
    return unless session[:user_id]
    @current_user ||= User.find(session[:user_id])
  end

  def logged_in?
    !session[:user_id].nil?
    # !!session[:user_id]
  end

  # def join(meetup)
  #   session[:user_id].meetups << meetup
  # end
  #
  # # Unfollows a user.
  # def leave(meetup)
  #   session[:user_id].meetups.delete(meetup)
  # end
  #
  # # Returns true if the current user is following the other user.
  # def joined?(meetup)
  #   session[:user_id].meetups.include?(meetup)
  # end

end
