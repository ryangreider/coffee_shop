Rails.application.routes.draw do
  devise_for :users

  #resources :categories
  #resources :suppliers
  #resources :items
  #resources :inventories
  #root 'items#index'

  root 'departments#index'
  resources :departments do
    resources :inventories
  end
  
  resources :inventories do
    resources :items
  end

  
end

