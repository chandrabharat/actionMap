# frozen_string_literal: true

class NewsItemsController < ApplicationController
  before_action :set_representative
  before_action :set_issue
  before_action :set_news_item, only: %i[show]

  def index
    @news_items = @representative.news_items
  end

  def show; end

  private

  def set_representative
    @representative = Representative.find(
      params[:representative_id]
    )
  end

  def set_news_item
    @news_item = NewsItem.find(params[:id])
  end

  def set_issue
    @issue = ['Free Speech', 'Immigration', 'Terrorism', "Social Security and
    Medicare", 'Abortion', 'Student Loans', 'Gun Control', 'Unemployment',
              'Climate Change', 'Homelessness', 'Racism', 'Tax Reform', "Net
    Neutrality", 'Religious Freedom', 'Border Security', 'Minimum Wage',
              'Equal Pay']
  end

  def news_api_to_articles_params(_news_info)
    ['Test2']
  end
end
