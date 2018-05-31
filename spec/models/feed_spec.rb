require 'rails_helper'

RSpec.describe Feed, type: :model do
  # user = FactoryBot.create(:user)
  subject { described_class.new}

  it "is valid with valid attributes" do
    user = FactoryBot.create(:user)
    feed = FactoryBot.create(:feed, :user_id => user.id)
    expect(feed).to be_valid
  end

  it "is not valid without a name" do
    user = FactoryBot.create(:user)
    subject.url = "Whatever"
    subject.description = "Whatever"
    subject.user_id = user.id
    expect(subject).to_not be_valid
  end

  it "is not valid without a url" do
    user = FactoryBot.create(:user)
    subject.description = "Whatever"
    subject.name = "Whatever"
    subject.user_id = user.id
    expect(subject).to_not be_valid
  end

  it "is not valid without a description" do
    user = FactoryBot.create(:user)
    subject.name = "Whatever"
    subject.user_id = user.id
    subject.url = "Whatever"
    expect(subject).to_not be_valid
  end

  it "is not valid without a user_id" do
    subject.name = "Whatever"
    subject.url = "Whatever"
    subject.description = "Whatever"
    expect(subject).to_not be_valid
  end
end
