class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.find(params[:id])
    # Add posts display in here once you have Post model/controller set up
  end

  def new
    @user = User.new
  end

  def create 
    @user = User.new(user_params)
    if @user.save
      redirect_to @user 
    else
      render 'new'
    end 
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
