Rails.application.routes.draw do
  #deviseを使ったofficeテーブル機能
  devise_for :offices
  # devise_for :offices,controllers: {
  #   sessions:      'offices/sessions',
  #   passwords:     'offices/passwords',
  #   registrations: 'offices/registrations'
  # }   
  #deviseを使ったuserテーブル機能
  devise_for :users
  # devise_for :users,controllers: {
  #   sessions:      'users/sessions',
  #   passwords:     'users/passwords',
  #   registrations: 'users/registrations'
  # }
  root "informations#index"
  resources :informations do#各アクションの定義
    resources :comments, only: :create
  end
  resources :offices, only: :show
end

