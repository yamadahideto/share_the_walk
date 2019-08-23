Rails.application.routes.draw do

  get 'rooms/index'
  root 'animals#index'
  devise_for :users
  resources :rooms, only: :index do
    resources :messages
  end
  resources :animals
end
