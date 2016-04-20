class ArticlesController < ApplicationController
  before_filter :authenticate_user!, except: [:show, :index]

  def index
    @articles = Article.all
  end

  def create
    Article.create(article_params)
    redirect_to root_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :body)
  end

end
