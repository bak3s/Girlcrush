Rails.application.routes.draw do

  resources :profiles, only: [:show]
  resources :crushes, only: [:index,:update]

  devise_for :users

  resources :users do
    resources :profiles, only: [:index]
  end

  resources :users do
    scope module: "users" do
      resources :crushes
      resources :profiles
    end
  end

  resources :crushes do
    member do
      put "like", to: "crushes#upvote"
      put "dislike", to: "crushes#downvote"
    end
  end
  
  root to: 'main#index'
end