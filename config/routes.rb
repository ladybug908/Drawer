Rails.application.routes.draw do
  devise_for :users
  #get 'drawers/index'
  root to: "drawers#index"
  resources :users, only: [:edit, :update]
  resources :drawers
end
