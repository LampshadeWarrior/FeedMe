require 'rails_helper'

RSpec.describe EntriesController, type: :controller do
  describe "entries#index action" do
    it "should successfully show the entries index" do
      user = FactoryBot.create(:user)
      feed = FactoryBot.create(:feed, :user_id => user.id)
      entry = FactoryBot.create(:entry, :feed_id => feed.id)
      get  :index, params: { id: feed.id }
      expect(response).to have_http_status(:success)
    end
  end

  describe "entries#show action" do
    it "should successfully show a single entry" do
      user = FactoryBot.create(:user)
      feed = FactoryBot.create(:feed, :user_id => user.id)
      entry = FactoryBot.create(:entry, :feed_id => feed.id)
      get  :show, params: { id: entry.id }
      expect(response).to have_http_status(:success)
    end
  end
end
