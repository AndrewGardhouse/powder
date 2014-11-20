class BsPostsController < ApplicationController
  def index
  	@bs_posts = BsPost.all 
  end

  def show
  	@bs_post = BsPost.find(params[:id])
  end

  def new
  	@bs_post = BsPost.new
  end

  def create
  	@bs_post = BsPost.new(bs_post_params)
  	@bs_post.user_id = current_user.id

  	if @bs_post.save
  		redirect_to bs_posts_path
  	else
  		render :new
  		Flash.now[:alert] = "Your post didnt work!"
  	end
  end



  def edit
  end

  protected

  def bs_post_params
  	params.require(:bs_post).permit(:title, :description, :type, :image, :cost, :user_id)
  end
end
