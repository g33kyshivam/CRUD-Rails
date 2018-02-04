class ArticlesController < ApplicationController
    def index
        @article = Article.all
    end
    def new
        @article = Article.new
    end
    def create
        @article = Article.new(article_params)
        if @article.save
            redirect_to action: 'index'
        else
          render :new
        end
    end

    def show
        @article = Article.find(params[:id])
    end

    def destroy
        @article = Article.find(params[:id])
        @article.delete
        redirect_to action: 'index'           
    end

    def edit
        @article = Article.find(params[:id])
    end

    def update
        @article = Article.find(params[:id])
        @article.update(article_params)
        if @article.save
            redirect_to action: 'index'
        else
            render :edit
        end
    end

    private
    def article_params
        params.require(:article).permit(:author, :content, :title)
    end

end

