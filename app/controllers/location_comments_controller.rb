class LocationCommentsController < ApplicationController
  def index
  	@location = Location.all
  end

  def edit
  	@location = Location.find(params[:id])
  end

  def show
  end
end
