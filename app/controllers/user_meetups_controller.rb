class UserMeetupsController < ApplicationController
  # before_action :authorize

  # def index
  #   @user_meetups = UserMeetup.all
  # end
  #
  # def show
  #   @user_meetup = UserMeetup.find(params[:meetup_id])
  # end

  def create
    @meetup = Meetup.find(params[:id])
    current_user.join(@meetup)
    redirect_to @meetup
  end

  def destroy
    @meetup = Meetup.find(params[:id])
    current_user.leave(@meetup)
    redirect_to @meetup
  end

end
