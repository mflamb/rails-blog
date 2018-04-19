class CommentsController < ApplicationController

    def create 
        Comment.create(comment_params)
        redirect_to ('/users/%{user_id}/posts/%{id}')
    end


private 

    def comment_params
        params.require(:comment).permit(:content, :post_id, :user_id)
    end
end

