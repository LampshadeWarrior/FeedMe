class Entry < ApplicationRecord
  belongs_to :feed
  
  validates :title, presence: true
  validates :author, presence: true
  validates :content, presence: true
  validates :feed_id, presence: true
end
