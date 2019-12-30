Rails.application.routes.draw do
  devise_for :offices
  devise_for :users
  root "informations#index"
  resources :informations do
    resources :comments, only: :create
  end
  resources :offices, only: :show
end

