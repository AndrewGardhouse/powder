class PhotoCommentsController < ApplicationController

  before_filter :load_photo
  before_filter :restrict_access
 
  def new
    @comment = @photo.photo_comments.build
  end

  def create
    @comment = @photo.photo_comments.build(comment_params)
    @comment.user_id = current_user.id

    if @comment.save
      redirect_to @photo, notice: "Comment Created!!"
    else
      render :new
    end
  end

  def destroy
  end

  protected

    def load_photo
      @photo = Photo.find(params[:photo_id])
    end

    def comment_params
      params.require(:photo_comment).permit(:comment, :user_id)
    end
end
