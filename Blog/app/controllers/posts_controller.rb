class PostsController < ApplicationController
  before_action :set_post, only: [:show]

  def index
    @posts = Post.order(created_at: :desc)
  end

  def show
  end

  private
  def set_post
   @post = Post.find(params[:id])
   @comment = Comment.new(post_id: @post.id)
   @comments = @post.comments
  end

 end
