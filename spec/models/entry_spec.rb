require 'rails_helper'

RSpec.describe Entry, type: :model do

  subject { described_class.new}

  it "is valid with valid attributes"
    user = FactoryBot.create(:user)
    feed = FactoryBot.create(:feed)
  it "is not valid without a title"
  it "is not valid without content"
  it "is not valid without an author"
  it "is not valid without a feed_id"
end
