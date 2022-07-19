Rails.application.routes.draw do
  get 'campsite_like/create'
  get 'campsite_like/destroy'
  get 'relationships/followings'
  get 'relationships/followers'
  resources :campsites
  resources :posts
  get "/" => "home#top"
  devise_for :users, :controllers => {
    :registrations => 'users/registrations'
    }
  resources :campsites do
    resource :campsite_likes, only: [:index, :create, :destroy]
  end
  get "campsites/:campsite_id/campsite_likes" => "campsite_likes#index"
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
  get "search" => "searches#search"
  get "search/result" => "search#result"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
