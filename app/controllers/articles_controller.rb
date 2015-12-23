class ArticlesController < ApplicationController

  def index
    @articles = Article.all
    load_articles
    render :index
  end

  private
  def load_articles
    require 'rss'
    require 'uri'
    url = 'http://rss.nytimes.com/services/xml/rss/nyt/HomePage.xml'
    open(url) do |rss|
      feed = RSS::Parser.parse(rss)
      feed.items.each do |article|
        @articles << Article.new({title: article.title, url: article.link})
      end
    end
  end


end
