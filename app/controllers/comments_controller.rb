class CommentsController < ApplicationController

def new
  @comment = Comment.new
end

def create
  binding.pry
  @comment = Comment.new(comment_params)
  @comment.save
  redirect_to post_path
end

private

  def comment_params
    params.require(:comment).permit(:id, :comment_text, :post_id)
  end
end
