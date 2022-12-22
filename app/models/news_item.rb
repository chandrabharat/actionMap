# frozen_string_literal: true

class NewsItem < ApplicationRecord
  belongs_to :representative
  has_many :ratings, dependent: :delete_all

  def self.find_for(representative_id)
    NewsItem.find_by(
      representative_id: representative_id
    )
  end

  def self.news_api_to_articles_params(news_info)
    articles = []
    news_info.each do |article|
      Rails.logger.debug article.title
      article_title = article.title
      article_link = article.url
      article_description = article.description

      art = NewsItem.new(title: article_title, link: article_link, description: article_description)
      articles.push(art)
    end
    articles
  end
end
