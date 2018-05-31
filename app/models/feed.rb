class Feed < ApplicationRecord
  validates :name, presence: true
  validates :url, presence: true
  validates :description, presence: true
  validates :user_id, presence: true
  
  has_many :entries, dependent: :destroy
  belongs_to :user
end
