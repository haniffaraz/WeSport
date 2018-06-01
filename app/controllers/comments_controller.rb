class CommentsController < ApplicationController
  before_action :set_meetup

  def index
    # byebug
    @comments = Comment.all
    @comments = @meetup.comments.order('created_at asc')
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = @meetup.comments.build(comment_params)
    @comment.user_id = current_user.id

    if @comment.save
      redirect_to @meetup
    end
  end

  def delete
    @comment = @meetup.comments.find(params[:id])

    if @comment.user_id == current_user.id
      @comment.destroy
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :user_id, :meetup_id)
  end

  def set_meetup
    @meetup = Meetup.find(params[:meetup_id])
  end
end
