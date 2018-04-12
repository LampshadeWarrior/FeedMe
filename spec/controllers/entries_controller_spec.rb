require 'rails_helper'

RSpec.describe EntriesController, type: :controller do
  describe "entries#index action" do
    it "should successfully show the entries index" do
      feed = FactoryBot.create(:feed)
      entry = FactoryBot.create(:entry, :feed_id => feed.id)
      get  :index, params: { feed_id: feed.id }
      expect(response).to have_http_status(:success)
    end
  end

  describe "entries#show action" do
    it "should successfully show a single entry" do
      feed = FactoryBot.create(:feed)
      entry = FactoryBot.create(:entry, :feed_id => feed.id)
      get  :show, params: { id: entry.id }
      expect(response).to have_http_status(:success)
    end
  end
end
