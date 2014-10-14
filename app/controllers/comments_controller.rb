class CommentsController < ApplicationController

def index
  @comments = Comment.all
end

def show
  @comment = Comment.find(params[:id])
end

def create
  @comment = Comment.create(comment_params)
  @comment.save
  redirect_to :back
end

private

  def comment_params
    params.require(:comment).permit(:comment_user, :comment_text, :created_at, :post_id)
  end
end
