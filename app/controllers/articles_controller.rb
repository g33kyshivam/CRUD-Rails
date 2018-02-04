class ArticlesController < ApplicationController
    def index
        @article = Article.all
    end
    def new
        @article = Article.new
    end
    def create
        @article = Article.create(article_params)
        redirect_to action: 'index'
    end

    def show
        @article = Article.find(params[:id])
    end

    private
    def article_params
        params.require(:article).permit(:author, :content, :title)
    end

end

