Rails.application.routes.draw do
  get 'entries/index'

  get 'entries/show'

  root 'feeds#index'
  resources :feeds do
    member do
      resources :entries, only: [:index, :show]
    end
  end
end
