class ArticlesController < ApplicationController

  def index
    url = 'http://rss.nytimes.com/services/xml/rss/nyt/HomePage.xml'
    open(url) do |rss|
      feed = RSS::Parser.parse(rss)
      @rss = feed.items
    end
    render :index
  end
end
