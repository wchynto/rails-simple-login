Rails.application.routes.draw do
  root 'pages#index'
  get '/pages/secret'
  resources :user_sessions, only: [:new, :create, :destroy]
  resources :users, only: [:index, :new, :create]
end
