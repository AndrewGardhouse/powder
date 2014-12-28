class LocationCommentsController < ApplicationController
  
  	before_filter :load_location
  	before_filter :restrict_access

	def new
		@location = Location.find(params["location_id"])
  		@comment = @location.location_comments.build
	end

	def create
		@location = Location.find(params["location_id"])
		@comment = @location.location_comments.build(comment_params)
		@comment.user = current_user

		if @comment.save
			redirect_to @location, notice: "Review created!"
		else
			render :new
		end
	end

	def destroy
		@comment = @location.location_comments.find(params["id"])
		@comment.destroy
		redirect_to location_path(@location)
	end

  protected 

  	def load_location
  		puts params
  		@location = Location.find(params["location_id"])
  	end

  	def comment_params
  		params.require(:location_comment).permit(:vote,)
  	end

end
