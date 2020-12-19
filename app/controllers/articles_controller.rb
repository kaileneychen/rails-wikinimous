class ArticlesController < ApplicationController
   def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(Article_params)
    @article.save
    redirect_to article_path(@Article)
  end

  def edit
    @Article = Article.find(params[:id])
  end

  def update
    @Article = Article.find(params[:id])
    @Article.update(article_params)

    redirect_to article_path(@Article)
  end

  def destroy
    @Article = Article.find(params[:id])
    @Article.destroy

    redirect_to Articles_path
  end
end

private

def Article_params
  params.require(:Article).permit(:title, :content)
end
