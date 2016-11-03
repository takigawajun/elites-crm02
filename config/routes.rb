Rails.application.routes.draw do
  devise_for :users
  resources :customers
  root 'customers#index'

#------------------------下記を追加---------------------
resources :comments, only: [:create, :destroy]
end