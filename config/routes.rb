Rails.application.routes.draw do
  resources :campsites
  resources :posts
  get "/" => "home#top"
  get "users/show" => "users#show"
  devise_for :users, :controllers => {
    :registrations => 'users/registrations'
    }
  resources :posts, :campsites
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
