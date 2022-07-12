Rails.application.routes.draw do
  resources :campsites
  resources :posts
  get "/" => "home#top"
  devise_for :users, :controllers => {
    :registrations => 'users/registrations'
    }
  resources :posts, :campsites
  resources :users, only: [:show, :edit, :update, :destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
