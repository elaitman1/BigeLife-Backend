class Api::V1::ArticlesController < ApplicationController
  before_action :find_article, only: [:show, :update]

  def create
    @article = Article.new(article_params)
    if @article.save
      render json: @article, status: :accepted
    else
      render json: { errors: @article.errors.full_messages }, status: :unprocessible_entity
    end
  end
  #
  # def update
  # end
  #
  def update
    @article.update(article_params)
    if @article.save
      render json: @article, status: :accepted
    else
      render json: { errors: @article.errors.full_messages }, status: :unprocessible_entity
    end
  end
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
    params.permit(:title, :author, :content, :image, :tag)
  end

  def find_article
    @article = Article.find(params[:id])
  end
end
