class PhotosController < ApplicationController
  
  def index
    if params[:tag]
      @photos = Photo.tagged_with(params[:tag])
    else
      @photos = Photo.all
    end
  end 

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    @photo.user_id = current_user.id
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
  end

  protected

    def photo_params
      params.require(:photo).permit(
        :title, :description, :image, :tag_list, :user_id
        )
    end
end
