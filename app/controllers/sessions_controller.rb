class SessionsController < ApplicationController

  def new

    if logged_in?
      redirect_to meetups_path
    end
  end

  def create
    @user = User.find_by(username: params["username"])
    if @user && @user.authenticate(params["password"])

      session[:user_id] = @user.id

      redirect_to meetups_path
    else
      redirect_to login_path
    end

  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end
end
