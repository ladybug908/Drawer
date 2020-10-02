Rails.application.routes.draw do
  devise_for :users
  #get 'drawers/index'
  root to: "partitions#index"
  resources :users, only: [:edit, :update]
  resources :partitions, only: [:new, :create, :destroy, :show] do
    resources :drawers, only: :index
    collection do
      get 'search'
    end
  end

end
