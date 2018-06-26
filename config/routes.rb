Rails.application.routes.draw do
  devise_for :users
  root 'feeds#index'
  resources :feeds, only: [:destroy]
  resources :feeds do
    member do
      resources :entries, only: [:index, :show]
    end
  end
end
