class PostsController < ApplicationController
  def index
    @api_fetcher = ApiFetcher.new
    if params[:search].present?
      @posts = @api_fetcher.fetch_data.select { |post| post['userId'].to_s == params[:search] }
    else
      @posts = @api_fetcher.fetch_data
    end
  end
end