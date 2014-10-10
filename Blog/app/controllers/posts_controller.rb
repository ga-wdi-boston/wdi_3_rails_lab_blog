class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update]

  def index
    @posts = Post.order(created_at: :desc)
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    redirect_to post_path(@post)
  end

  def edit
    binding.pry
  end

  def update
    binding.pry
    if @post.update(post_params)
      redirect_to @post, notice: 'Post was successfully updated.'
    else
      render :edit
    end
  end


  private
  def set_post
   @post = Post.find(params[:id])
   @comment = Comment.new(post_id: @post.id)
   @comments = @post.comments
  end

  def post_params
    params.require(:post).permit(:author, :subject, :content)
  end

 end
