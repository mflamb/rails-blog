class CommentsController < ApplicationController

    def create 
        Comment.create(comment_params)
        # redirect_to ('/users/#{params[:comment][:user_id]}/posts/#{params[:comment][:post_id]}')
        redirect_to user_post_path(params[:comment][:user_id], params[:comment][:post_id])
    end


private 

    def comment_params
        params.require(:comment).permit(:content, :post_id, :user_id)
    end
end

