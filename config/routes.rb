Rails.application.routes.draw do
  get 'drawers/index'
  root to: "drawers#index"
end
