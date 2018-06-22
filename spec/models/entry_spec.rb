require 'rails_helper'

RSpec.describe Entry, type: :model do

  subject { described_class.new}

  it "is valid with valid attributes" do
    user = FactoryBot.create(:user)
    feed = FactoryBot.create(:feed, :user_id => user.id)
    entry = FactoryBot.create(:entry, :feed_id => feed.id)
    expect(entry).to be_valid
  end

  it "is not valid without a title" do
    user = FactoryBot.create(:user)
    feed = FactoryBot.create(:feed, :user_id => user.id)
    subject.content = "Whatever"
    subject.author = "Whomever"
    subject.feed_id = feed.id
    expect(subject).to_not be_valid
  end

  it "is not valid without content" do
    user = FactoryBot.create(:user)
    feed = FactoryBot.create(:feed, :user_id => user.id)
    subject.author = "Whomever"
    subject.feed_id = feed.id
    subject.title = "Whatever"
    expect(subject).to_not be_valid
  end

  it "is not valid without a feed_id" do
    subject.title = "Whatever"
    subject.content = "Whatever"
    subject.author = "Whomever"
    expect(subject).to_not be_valid
  end

end
