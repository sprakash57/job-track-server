class CommentsController < ApplicationController
    def create
        @subscription = Subscription.find(params[:article_id])
        @comment = @article.comments.create(comment_params)
        redirect_to subscription_path(@subscription)
    end

    private
        def comment_params
            params.require(:comment).permit(:commenter, :body)
        end
    end
end
