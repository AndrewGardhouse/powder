class ReviewsController < ApplicationController
	before_filter :load_movie
	def new
    @review = @movie.reviews.build
  end

  def create
    @review = @location.reviews.build(review_params)
    @review.user_id = current_user.id

    if @review.save
      redirect_to @location, notice: "Review created successfully"
    else
      render :new
    end
  end

  protected

  def review_params
    params.require(:review).permit(:rating_out_of_ten)
  end

  def load_movie
    @location = Location.find(params[:id])
  end
end
