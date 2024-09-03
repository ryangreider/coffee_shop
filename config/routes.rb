Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  delete 'logout', to: 'sessions#destroy'
  devise_for :users
  resources :categories
  resources :suppliers
  resources :items
  resources :inventories
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  root 'items#index'
  
end

