# == Schema Information
#
# Table name: articles
#
#  id         :integer          not null, primary key
#  title      :string           not null
#  url        :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Article < ActiveRecord::Base
  validates :title, :url, presence: true
  belongs_to :user

  def self.fetch_articles(url = 'http://rss.nytimes.com/services/xml/rss/nyt/HomePage.xml')
    require 'rss'
    require 'uri'
    articles = []
    open(url) do |rss|
      feed = RSS::Parser.parse(rss)
      articles = feed.items
    end
    articles
  end
end
