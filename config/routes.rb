Rails.application.routes.draw do
  devise_for :users
  #get 'drawers/index'
  root to: "partitions#index"
  resources :users, only: [:edit, :update]
  resources :drawers
  resources :partitions, only: [:new, :create]
end
