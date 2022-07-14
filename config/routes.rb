Rails.application.routes.draw do
  get 'relationships/followings'
  get 'relationships/followers'
  resources :campsites
  resources :posts
  get "/" => "home#top"
  devise_for :users, :controllers => {
    :registrations => 'users/registrations'
    }
  resources :campsites
  resources :posts do
    resource :likes, only: [:index, :create, :destroy]
  end
  get "posts/:post_id/likes" => "likes#index"
  resources :users, only: [:show, :edit, :update, :destroy]
  resources :users do
    resource :relationships, only: [:create, :destroy]
    get 'followings' => 'relationships#followings', as: 'followings'
    get 'followers' => 'relationships#followers', as: 'followers'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
