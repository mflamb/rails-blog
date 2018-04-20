class SessionsController < ApplicationController
  def new

  end

  def create 
    puts "************************"
    puts params.inspect
    puts "************************"
    @user = User.find_by(email: params[:session][:email])
    if @user && @user.authenticate(params[:session][:password])
        log_in @user
        redirect_to posts_path
    else
        render :new
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to login_path
  end
end
