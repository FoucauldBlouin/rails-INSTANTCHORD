Rails.application.routes.draw do
  get 'chords/index'
  get 'chords/show'
  get 'songs/index'
  get 'songs/show'
  get 'songs/new'
  get 'songs/create'
  get 'songs/edit'
  get 'songs/update'
  get 'songs/destroy'
  get 'home/index'
    # Generic syntax:
    # verb "path", to: "controller#action"
    get "home", to: "pages#home"
    root 'home#index'
    resources :songs
    resources :chords, only: [:index, :show]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
