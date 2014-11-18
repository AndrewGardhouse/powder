class VideosController < ApplicationController
  def new
    @video = Video.new
  end

  def create
    @video = Video.new(video_params)
    @video.user_id = current_user.id

    if @video.save
      redirect_to videos_path
    else
      render :new
    end
  end

  def destroy
  end

  def index
    @videos = Video.all
  end

  def show
    @video = Video.find(params[:id])
  end

  protected

    def video_params
      params.require(:video).permit(
        :title, :description, :url, :user_id
      )
    end
end
