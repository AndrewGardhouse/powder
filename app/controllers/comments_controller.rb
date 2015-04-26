class CommentsController < ApplicationController

  before_filter :load_commentable

  def new
    @comment = @commentable.comment.new 
  end

  def create
    @comment = @commentable.comments.new(comment_params)
    @comment.user = current_user

    if @comment.save
      redirect_to @commentable
    else
      redirect_to :new
    end
  end

  protected

  def load_commentable
    if params[:photo_id].present?
      @commentable = Photo.find(params[:photo_id])
    elsif params[:video_id].present?
      @commentable = Video.find(params[:video_id])
    end
  end

  def comment_params
    params.require(:comment).permit(:user, :text)
  end

end
