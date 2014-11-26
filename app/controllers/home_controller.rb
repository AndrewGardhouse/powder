class HomeController < ApplicationController

  def index
    @photo = Photo.last
  end
end
