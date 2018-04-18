class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    # Add your comments display in here when you make comments model/controller
  end

  def new
    @post = Post.new
    # Add current_user.id instance variable once you set up sessions
  end

  def create 
    Post.create(post_params)
    redirect_to user_path # Add (current_user)

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(update_params)
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to user_path # Add (current_user)
  end 

  private 

  def update_params
    params.require(:post).permit(:title, :content)
  end 

  def post_params
    params.require(:post).permit(:title, :content, :user_id)
  end
end
