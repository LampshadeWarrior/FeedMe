require 'rails_helper'

RSpec.describe FeedsController, type: :controller do
  describe "feeds#new action" do
    it "should successfully show the new feed page" do
      user = FactoryBot.create(:user)
      sign_in user
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "feeds#index action" do
    it "should successfully show the feed index" do
      user = FactoryBot.create(:user)
      sign_in user
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "feeds#show action" do
    it "should successfully show a single feed" do
      user = FactoryBot.create(:user)
      sign_in user
      feed = FactoryBot.create(:feed, :user_id => user.id)
      get  :show, params: { id: feed.id }
      expect(response).to have_http_status(:success)
    end
  end
end
