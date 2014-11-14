class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
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
