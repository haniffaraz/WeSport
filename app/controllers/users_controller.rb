class UsersController < ApplicationController

  before_action :find_user, only: [:show, :edit, :update, :delete, :join, :leave, :joined?]

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      # sign in the user
      session[:user_id] = @user.id

      redirect_to meetups_path # @user
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to @user
    else
      render 'edit'
    end
  end

  def delete
    if @user.destroy
      redirect_to '/index'
    end
  end

  # def signup
  #   @user = User.new
  # end

  private

  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :age, :gender, :fav_sport, :bio, :username, :password_digest)
  end

end
