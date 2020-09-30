Rails.application.routes.draw do
  devise_for :users
  #get 'drawers/index'
  root to: "partitions#index"
  resources :users, only: [:edit, :update]
  resources :partitions, only: [:new, :create, :destroy] do
    resources :drawers, only: :index
  end
end
