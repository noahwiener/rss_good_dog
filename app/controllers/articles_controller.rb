class ArticlesController < ApplicationController

  def index
    url = params["url"] ? params["url"] : 'http://rss.nytimes.com/services/xml/rss/nyt/HomePage.xml'
    @section = params["section"] ? params["section"] : "NYTimes.com Home Page (U.S.)"
    require 'rss'
    require 'uri'
    open(url) do |rss|
      feed = RSS::Parser.parse(rss)
      @articles = feed.items
    end
    render :index
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to articles_url(params)
    else
      flash.now[:errors] = @article.errors.full_messages
      redirect_to articles_url(params)
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    if params.has_key?(:profile)
      redirect_to user_path
    else
      redirect_to articles_url(params)
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :url, :user_id)
  end

end
