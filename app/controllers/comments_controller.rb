class CommentsController < ApplicationController

def index
  @comments = Comment.all
end

def show
  @comment = Comment.find(params[:id])
end

# def new
#   @comment = Comment.new
# end

def create
  @comment = Comment.create(comment_params)
  @comment.save
  redirect_to @comment.post
end

def destroy
  @comment = Comment.find(params[:id])
  @comment.destroy
  redirect_to :back, notice: "comment deleted!"
end


private

  def find_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:comment_user, :comment_text, :created_at, :post_id)
  end
end
