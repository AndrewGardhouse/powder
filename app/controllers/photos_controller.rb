class PhotosController < ApplicationController
  
  def index
    if params[:tag]
      @photos = Photo.tagged_with(params[:tag]).paginate(:page => params[:page], :per_page => 8)
    else
      @photos = Photo.paginate(:page => params[:page], :per_page => 8)
    end
  end 

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    @photo.user = current_user
    if @photo.save
      redirect_to photos_path
    else
      render :new
    end
  end

  def destroy
  end

  def show
    @photo = Photo.find(params[:id])
    @comment = @photo.comments
  end

  protected

    def photo_params
      params.require(:photo).permit(
        :title, :description, :image, :tag_list, :user
        )
    end
end
