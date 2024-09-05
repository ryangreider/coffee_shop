Rails.application.routes.draw do
  devise_for :users

  resources :categories
  resources :suppliers
  resources :items
  resources :inventories

  root 'items#index'
  
end

