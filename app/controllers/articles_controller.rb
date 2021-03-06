class ArticlesController < ApplicationController

  def show
    @article = Article.find(params[:id])
  end

  # STOPPED AT: 5.8 Listing all articles

  def new
  end

  def create
    @article = Article.new(params.require(:article).permit(:title, :text))

    @article.save
    redirect_to @article
  end

  private

  def article_params
    params.require(:article).permit(:title, :text)
  end

end
