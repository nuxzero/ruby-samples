class ArticlesController < ApplicationController
  # Set the article before the show, edit, update and destroy actions
  before_action :set_article, only: %i[show edit update destroy]

  def index
    @articles = Article.all
  end

  def show
    # No need to find the article because the before_action does it
    # @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def edit
    # No need to find the article because the before_action does it
    # @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      flash[:notice] = 'Article was created successfully.'
      redirect_to @article
    else
      # Renders the new page with the form and the errors
      # The status code is 422 which means unprocessable entity
      # In Rails 7 you must pass the status: :unprocessable_entity option
      render 'new', status: :unprocessable_entity
    end
  end

  def update
    # No need to find the article because the before_action does it
    # @article = Article.find(params[:id])
    if @article.update(article_params)
      flash[:notice] = 'Article was updated successfully.'
      redirect_to @article
    else
      render 'edit', status: :unprocessable_entity
    end
  end

  def destroy
    # No need to find the article because the before_action does it
    # @article = Article.find(params[:id])
    @article.destroy
    flash[:notice] = 'Article was deleted successfully.'
    redirect_to articles_path
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :description)
  end
end
