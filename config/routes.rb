Rails.application.routes.draw do
  devise_for :users
  root to: "homepage#index"
  resources :homepage, only: [:index, :create]
end
