Rails.application.routes.draw do
  get 'lists/new'
  get 'lists/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'lists#index'
  resources :lists, except: %w[edit update] do
    resources :bookmarks, only: %w[new create]
  end
  resources :bookmarks, only: :destroy
end
