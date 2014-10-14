class CommentsController < ApplicationController

def create
  @comment = Comment.create(comment_params)
  @comment.save
  redirect_to @post.comment
end

private

  def comment_params
    params.require(:comment).permit(:comment_user, :comment_text, :post_id)
  end
end
