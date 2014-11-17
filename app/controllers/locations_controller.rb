class LocationsController < ApplicationController
  def index
  	@locations = Location.all
  end

  def edit
  	@location = Location.find(params[:id])
  end

  def show
  	@location = Location.find(params[:id])
    @comments = @location.location_comments.all
  end

  def upvote
    #@location = Location.find(params["location_id"])
    Location.increment_counter(:upvote, params["location_id"])
    redirect_to locations_path
  end

  def update
  	@location = Location.find(params[:id])

  	if @location.update_attributes(location_params)
  		redirect_to location_path(@location)
  	end
  end

  protected 
  def location_params
  	params.require(:location).permit(:title, :url, :description, :upvote, :location) 
  end
end
