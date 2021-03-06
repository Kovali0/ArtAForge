class UsersController < ApplicationController

  def index
    @user = User.all
  end

  def create
    @user = User.create(user_params)
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
  end
  
  private

  def user_params
    params.require(:user).permit(:role_id)
  end

end