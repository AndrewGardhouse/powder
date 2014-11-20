class PhotosController < ApplicationController
  
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

  def index
    @photos = Photo.all
  end

  def show
    @photo = Photo.find(params[:id])
  end

  protected

    def photo_params
      params.require(:photo).permit(
        :title, :description, :image, :tag_list
        )
    end
end
