Rails.application.routes.draw do
  resources :inventories
  resources :suppliers
  resources :categories
  devise_for :users
  resources :items
  root 'items#index'
  
end

