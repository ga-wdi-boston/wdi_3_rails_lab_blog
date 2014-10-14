class PostsController < ApplicationController
  # before_action :find_post, only: [:show, :edit, :update, :destroy]


  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    @comment = @post.comments.new
  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.create(post_params)
    if @post.save
      redirect_to @post, notice: "created!"
    else
      render :new
    end
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(post_params)
      redirect_to @post, notice: "updated!"
    else
      render :edit
    end
  end


  def destroy
    @post.destroy
    redirect_to posts_path, notice: "baleted!"
  end


private
# will refactor more with this later
  def find_post
    @post = Post.find(params[:id])
  end


  def post_params
    params.require(:post).permit(:post_title, :post_content, :post_user)
  end


end
