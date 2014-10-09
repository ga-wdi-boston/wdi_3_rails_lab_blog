class PostsController < ApplicationController
  before_action :set_post, only: [:show]

  def index
    binding.pry
    @posts = Post.order(created_at: :desc)
  end

  def show
    binding.pry
  end

  private
  def set_post
   @post = Post.find(params[:id])
   @comments = @post.comments
   @num_comments = @comments.count
  end

 end
