# frozen_string_literal: true

require 'open-uri'
require 'news-api'

class NewsApiController < ApplicationController
  def search
    representative = Representative.find(params[:news_item][:representative])
    issue = params[:news_item][:issue]
    newsapi = News.new('446908a29a2b43b7b728c5433895d6c0')
    @representative = representative
    @issue = issue
    top_news_articles = newsapi.get_everything(q: "#{representative.name}+#{issue}",
                                               language: 'en', sortBy: 'popularity', page: 1).slice(0, 5)
    result = NewsItem.news_api_to_articles_params(top_news_articles)
    Rails.logger.debug 'LEFT NEWS ITEM PARAMS FUNCTION'
    flash[:representative] = @representative
    flash[:issue] = @issue
    Rails.logger.debug result
    @articles = result
    # session[:top_news_articles] = result

    # render "/representatives/#{representative.id}/representatives/#{representative.id}/my_news_item/new"
    redirect_to representative_new_my_news_item_path(@representative)
  end
end
