Rails.application.routes.draw do

  resources :profiles
  resources :crushes, only: [:index]

  devise_for :users

  resources :users do
    resources :profiles, only: [:index]
  end

  resources :users do
    scope module: "users" do
      resources :crushes
    end
  end
  
  root to: 'main#index'
end