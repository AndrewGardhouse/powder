class UsersController < ApplicationController
  
  def show
    @user = User.find(session[:user_id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      redirect_to show
    else
      render :new
    end

  end

  def edit
  end

  def update
  end

  def destroy
  end

  protected

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation) 
    end

end
