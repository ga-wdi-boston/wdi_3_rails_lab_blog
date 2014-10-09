class CommentsController < ApplicationController
  def create
    @comment = Comment.create(comment_params)
    redirect_to @comment.post
  end

  private

    def comment_params
      params.require(:comment).permit(:author, :content, :post_id)
    end
end