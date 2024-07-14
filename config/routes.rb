Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  
  resources :events do
    resources :bookings, only: [:create, :destroy]
    resources :reviews, only: [:create, :update, :destroy]
  end

  resources :blogs
  
  root to: 'events#index'
  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#contact'

    # For user profile
    resources :users, only: [:show]
end