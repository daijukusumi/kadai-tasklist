Rails.application.routes.draw do
  get 'toppages/index'

  root to: 'toppages#index'
  
  get 'sign_up', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create]
  resources :tasks
end
