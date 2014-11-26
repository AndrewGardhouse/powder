class VideoCommentsController < ApplicationController
  
  before_filter :load_video
  before_filter :restrict_access

  def new
    @comment = @video.video_comments.build
  end

  def create
    @comment = @video.video_comments.build(comment_params)
    @comment.user_id = current_user.id

    if @comment.save
      redirect_to @video, notice: "Comment Created!!"
    else
      render :new
    end
  end

  def destroy
  end

  protected

    def load_video
      @video = Video.find(params[:video_id])
    end

    def comment_params
      params.require(:video_comment).permit(
        :text, :user_id
        )
    end
end
