class PostsController < ApplicationController
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
  def create
    @post = Post.create(post_params)
    redirect_to @post
  end

  private

    def post_params
      params.require(:post).permit(:title, :author, :content)
    end
end