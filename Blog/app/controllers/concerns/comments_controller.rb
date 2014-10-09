class CommentsController < ApplicationController
  private
  def book_params
    params.require(:comment).permit(:author, :content, :created_at, :post_id)
  end
end
