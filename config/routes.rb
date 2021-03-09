Rails.application.routes.draw do
  resource :users, only: [:create]
  resources :sessions, only: [:create]
  resources :cars
  resources :favs
end
