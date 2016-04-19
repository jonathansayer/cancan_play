class ArticlesController < ApplicationController
  before_filter :authenticate_user!, except: [:show, :index]

  def index
    @articles = Article.all
  end
end
