class Api::V1::ArticlesController < ApplicationController
  before_action :find_article, only: [:show]
  # def create
  # end
  #
  # def update
  # end
  #
  # def edit
  # end
  #
  # def destroy
  # end

  def index
    @articles = Article.all
    render json: @articles
  end

  def show
    render json: @article
  end

  private

  def article_params
    params.permit(:title, :author, :content, :image)
  end

  def find_article
    @article = Article.find(params[:id])
  end
end
