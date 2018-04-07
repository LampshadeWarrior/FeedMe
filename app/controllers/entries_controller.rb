class EntriesController < ApplicationController
  before_action :set_feed, only: :index
  def index
    @entries = @feed.entries.order('published').reverse_order
  end

  def show
    @entry = Entry.find(params[:id])
  end

  private

  def set_feed
    @feed = Feed.find(params[:id])
  end
end
