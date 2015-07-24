Rails.application.routes.draw do

  resources :profiles

  devise_for :users

  resources :users do 
    resources :profiles, only: [:index]
  end
  
  root to: 'main#index'
end