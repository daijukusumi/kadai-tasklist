Rails.application.routes.draw do

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  root to: 'toppages#index'
  
  get 'login', to: 'session#new'
  get 'login', to: 'session#create'
  get 'logout', to: 'session#destroy'
  
  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create]
  resources :tasks
end
