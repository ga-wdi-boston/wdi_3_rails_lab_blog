class PostsController < ApplicationController
  before_action :set_post, only: [:show]

  def index
    binding.pry
    @posts = Post.order(created_at: :desc)
  end

  def show
  end

  private
  def set_post
   @post = Post.find(params[:id])
   @comments = @post.comments
  end

 end
