Rails.application.routes.draw do
  devise_for :users
  root to: "home#top"
  get '/home/about', to: 'home#about', as: 'about'
  # ユーザー関連のルーティング
  
  resources :users, only: [:index, :show, :edit, :update]
  
  resources :books, only: [:new, :index, :show, :create, :edit, :update, :destroy] do
    resources :book_comments, only: [:create, :destroy]
    resource :favorites, only: [:create, :destroy]
  end
  
  
end
