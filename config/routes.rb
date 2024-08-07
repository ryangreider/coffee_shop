Rails.application.routes.draw do
  #Items Model
  resources :items
  root 'items#index'
  resources :items

  #User Model
  root 'sessions#home'
  resources :users, only: [:new, :create, :update, :show, :destroy]

  get '/login', 'sessions#login'
  post '/login', 'sessions#create'
  post '/logout', 'sessions#destroy'
  get '/logout', 'sessions#destroy'
end
