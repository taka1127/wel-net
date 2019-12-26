Rails.application.routes.draw do
  #deviseを使ったofficeテーブル機能
  devise_for :offices,controllers: {
    sessions:      'admins/sessions',
    passwords:     'admins/passwords',
    registrations: 'admins/registrations'
  }   
  #deviseを使ったuserテーブル機能
  devise_for :users,controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
  }
  root "informations#index"
  resources :informations #各アクションの定義
end
