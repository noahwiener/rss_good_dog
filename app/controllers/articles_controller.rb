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

  private



end
