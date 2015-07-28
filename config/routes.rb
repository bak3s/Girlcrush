Rails.application.routes.draw do

  resources :profiles
  resources :crushes

  devise_for :users

  resources :users do 
    resources :profiles, only: [:index]
    resources :crushes, only: [:index]
  end
  
  root to: 'main#index'
end