require 'rails_helper'

RSpec.describe FeedsController, type: :controller do
  describe "feeds#new action" do
    it "should successfully show the new feed page" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "feeds#index action" do
    it "should successfully show the feed index" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end
  
  describe "feeds#show action" do
    it "should successfully show a single feed" do
      feed = FactoryBot.create(:feed)
      get  :show, params: { id: feed.id }
    end
  end
end
