class MediaController < ApplicationController
  def index
    @medium = Medium.all
  end

  def new
    @medium = Medium.new
  end

  def create
    @medium = Medium.new(medium_params) 

    if @medium.save
      redirect_to media_path
    else
      render :new
    end
  end

  def edit
  end

  def show
    @medium = Medium.find(params[:id])
  end

  protected 

    def medium_params
      params.require(:medium).permit(
        :title, :url, :description
        )
    end
end
