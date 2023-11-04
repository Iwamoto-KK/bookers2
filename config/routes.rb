Rails.application.routes.draw do
  devise_for :users
  root to: "home#top"
  get '/home/about', to: 'home#about', as: 'about'
  get '/users', to: 'users#index', as: 'users'
  # ユーザー関連のルーティング
  
  resources :users, only: [:index, :show, :edit, :update]
  
  resources :books, only: [:new, :index, :show, :create, :edit, :update, :destroy]
end
