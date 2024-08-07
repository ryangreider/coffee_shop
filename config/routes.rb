Rails.application.routes.draw do
  #Items Model
  resources :items
  root 'items#index'
end

