Rails.application.routes.draw do
  get 'reviews/create'
  get 'review/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root to: 'lists#index'

  resources :lists, only: [:index, :new, :create, :show, :destroy] do
    resources :bookmarks, only: [:new, :create]
    resources :reviews, only: [:create]
  end
  
  resources :movies, only: [:destroy]
  resources :bookmarks, only: [:destroy]
  resources :reviews, only: [:create]
end
