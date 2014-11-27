class BsPostsController < ApplicationController
  def index
    # puts params[:type]
  	@posts = BsPost.paginate(:page => params[:page], :per_page => 50)
    @bs_posts = BsPost.all 
    @type = params[:type].to_s
    #results = BsPost.where(attributes: bs_post_params)
  end

  def show
  	@bs_post = BsPost.find(params[:id])
    @current_user_id = current_user.id
  end

  def new
    @bs_posts = BsPost.all
  	@bs_post = BsPost.new
  end

  def create
  	@bs_post = BsPost.new(bs_post_params)
    @bs_post.user_id = current_user.id

  	if @bs_post.save
  		redirect_to posts_all_path
  	else
  		render :new
  		Flash.now[:alert] = "Your post didnt work!"
  	end
  end

  def destroy
    @bs_post = BsPost.find(params[:id])
    @bs_post.destroy
    redirect_to posts_all_path
  end



  def edit
  end

  protected

  def bs_post_params
  	params.require(:bs_post).permit(:title, :description, :type, :image, :cost, :user_id)
  end
end
