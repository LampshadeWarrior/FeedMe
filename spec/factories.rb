FactoryBot.define do

  factory :feed do
    sequence :name do |n|
      "Fake Feed #{n}"
    end
    sequence :url do
      "https://rss.simplecast.com/podcasts/2389/rss"
    end
    sequence :description do |n|
      "Fake description #{n}"
    end
  end
end
