Rails.application.routes.draw do
  devise_for :users
  resources :users

  # root to: "home#index"
  root to: "home#temp"

  get "home", to: "home#index"
end
