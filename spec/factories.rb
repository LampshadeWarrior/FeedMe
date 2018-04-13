FactoryBot.define do
  factory :user do
    
  end

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

  factory :entry do
    sequence :title do |n|
      "Fake Entry #{n}"
    end
    sequence :published do
      DateTime.now
    end
    sequence :content do |n|
      "#{n} Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos."
    end
    sequence :author do |n|
      "Fake author #{n}"
    end
  end
end
