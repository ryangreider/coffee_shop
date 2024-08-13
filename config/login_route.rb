Rails.application.routes.draw do
 root 'sessions#home'
 resources :users, only: [:new, :create, :update, :show, :destroy]

 get '/login', 'sessions#login'
 post '/login', 'sessions#create'
 delete '/logout', 'sessions#destroy'
 get '/logout', 'sessions#destroy'
end
