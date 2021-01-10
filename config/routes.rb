Rails.application.routes.draw do
  root 'static_pages#home'
  get '/about', to: 'static_pages#about'
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  post '/guest', to: 'sessions#guest'
  resources :users
  resources :practices, only: [:index, :show]
  get 'studylogs/index'
  resources :studylogs
end
