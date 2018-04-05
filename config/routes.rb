Rails.application.routes.draw do
  get 'entries/index'

  get 'entries/show'

  root 'feeds#index'
  resources :feeds
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
