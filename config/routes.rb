Rails.application.routes.draw do
  root 'static_pages#home'
  get '/about', to: 'static_pages#about'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  post '/guest', to: 'sessions#guest'
  resources :users, only: [:new, :create, :edit, :update, :destroy]
  resources :practices, only: [:index, :show]
  resources :studylogs, only: [:create, :destroy]
end
