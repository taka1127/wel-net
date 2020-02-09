Rails.application.routes.draw do
  devise_for :offices
  devise_for :users

  root to: "top#index"
  resources :informations do
    resources :comments, only: :create
    resources :user_comments, only: :create
  end
  resources :offices, only: [:index,:show]
end

