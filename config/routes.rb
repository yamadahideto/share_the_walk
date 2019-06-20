Rails.application.routes.draw do

  root 'animals#index'
  devise_for :users
  resources :users, only: :index do
    resources :messages
  end
  resources :animals
end
