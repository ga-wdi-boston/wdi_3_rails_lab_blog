class CommentsController < ApplicationController
  before_action :find_comment, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show, :index]

def index
  @comments = Comment.all
end

def show
  @comment = Comment.find(params[:id])
end

def new
  @comment = Comment.new
end

def create
  @comment = Comment.create(comment_params)
  @comment.user = current_user
  if @comment.save
    redirect_to @comment.post, notice: "thanks for your comment!"
  else
    render :new
  end
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
    params.require(:comment).permit(:comment_text, :created_at, :post_id, :user_id)
  end
end
