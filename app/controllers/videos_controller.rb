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
    if params[:tag]
      @videos = Video.tagged_with(params[:tag])
    else
      @videos = Video.paginate(:page => params[:page], :per_page => 5)
    end
  end 

  def show
    @video = Video.find(params[:id])
  end

  protected

    def video_params
      params.require(:video).permit(
        :title, :description, :url, :user_id, :tag_list
      )
    end
end
