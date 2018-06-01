class UserMeetupsController < ApplicationController

  def create
    @meetup = Meetup.find(params[:meetup_id])
    current_user.join(@meetup)
    redirect_to meetups_path
  end

  def destroy
    @meetup = Meetup.find(params[:meetup_id])
    current_user.leave(@meetup)
    redirect_to meetups_path
  end

end
