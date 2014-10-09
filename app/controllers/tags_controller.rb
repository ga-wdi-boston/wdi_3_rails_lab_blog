class TagsController < ApplicationController
  
  http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy

  def create
    @article = Article.find(params[:article_id])
    @tag = @article.tags.create(tag_params)
    redirect_to article_path(@article)
  end

  def destroy
    @article = Article.find(params[:article_id])
    @tag = @article.tags.find(params[:id])
    @tag.destroy
    redirect_to article_path(@article)
  end

  private
  def tag_params
    params.require(:tag).permit(:label)
  end
end
