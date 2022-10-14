class CommentsController < ApplicationController
    http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy

    def create
        @subscription = Subscription.find(params[:subscription_id])
        @comment = @subscription.comments.create(comment_params)
        redirect_to subscription_path(@subscription)
    end

    def destroy
        @subscription = Subscription.find(params[:subscription_id])
        @comment = @subscription.comments.find(params[:id])
        @comment.destroy
        redirect_to subscription_path(@subscription), status: :see_other
    end

    private
        def comment_params
            params.require(:comment).permit(:commenter, :body, :status)
        end
end
