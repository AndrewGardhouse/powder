class NewspostsController < ApplicationController
  def index
  	@posts = NewsPost.all
  	
  	respond_to do |format|
  		format.rss  {render action: 'feed', layout: false}
	end
  end

  def show
  end
end
