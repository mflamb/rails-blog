class CommentsController < ApplicationController

    def create 
        Commment.create(comment_params)
        redirect_to '/'
    end


private 

    def comment_params
        params.require(:comment).permit(:content, :post_id, :user_id)
    end
end

