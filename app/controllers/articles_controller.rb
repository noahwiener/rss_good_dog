class ArticlesController < ApplicationController

  def index
    require 'rss'
    require 'uri'
    url = 'http://rss.nytimes.com/services/xml/rss/nyt/HomePage.xml'
    open(url) do |rss|
      feed = RSS::Parser.parse(rss)
      @articles = feed.items
    end
    render :index
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to articles_url
    else
      flash.now[:errors] = @article.errors.full_messages
      redirect_to articles_url
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :url, :user_id)
  end

end
