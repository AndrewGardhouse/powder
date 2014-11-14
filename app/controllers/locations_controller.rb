class LocationsController < ApplicationController
  def index
  	@locations = Location.all
  end

  def edit
  	@locations = Location.find(params[:id])
  end

  def show
  	@locations = Location.find(params[:id])
  end

  def update
  	@locations = Location.find(params[:id])

  	if @location.update_attributes(location_params)
  		redirect_to location_path(@location)
  	end
  end

  protected 
  def location_params
  	params.require(:location).permit(:title, :url, :description, :upvote) 
  end
end
