Rails.application.routes.draw do
  devise_for :users
  
  resources :events do
    resources :bookings, only: [:create, :destroy]
    resources :reviews, only: [:create, :update, :destroy]
  end

  resources :blog_posts
  
  root to: 'events#index'
end