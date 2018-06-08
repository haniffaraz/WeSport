class MeetupsController < ApplicationController

  before_action :find_meetup, only: [:show, :edit, :update, :destroy]

  def index
    if params[:category]
      @meetups = Meetup.search(params[:category])
    else
      @meetups = Meetup.all
    end

    # if !logged_in?
    #   redirect_to login_path
    # end
  end

  def show
    # @comment = @meetup.comments.build
    # @comment.user_id = current_user.id
    @comment = Comment.new
  end

  def new
    @meetup = Meetup.new
  end

  def create
    @meetup = Meetup.new(meetup_params)
    @meetup.host_id = session[:user_id]

    if @meetup.save
      redirect_to @meetup
    else
      render 'new'
    end

    if !logged_in?
      redirect_to login_path
    end
  end

  def edit
  end

  def update
    if session[:user_id] == @meetup.host_id

      if @meetup.update(meetup_params)
        redirect_to @meetup
      else
        render 'edit'
      end
    else
      flash.now[:error] = 'Only the host can edit or delete a Meetup'
      redirect_to @meetup
    end
  end

  def destroy
    if session[:user_id] == @meetup.host_id

      if @meetup.destroy
        redirect_to '/home'
      end
    else
      flash.now[:error] = 'Only the host can edit or delete a Meetup'
      redirect_to '/home'
    end
  end


  private

  def find_meetup
    @meetup = Meetup.find(params[:id])
  end

  def meetup_params
    params.require(:meetup).permit(:category, :name, :location, :time, :description, :host_id)
  end

end
