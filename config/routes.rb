Rails.application.routes.draw do

  root 'animals#index'
  devise_for :users
  resources :users, only: :index
  resources :messages
  resources :animals
end
