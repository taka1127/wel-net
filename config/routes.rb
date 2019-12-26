Rails.application.routes.draw do
  #deviseを使ったofficeテーブル機能
  devise_for :offices
  # devise_for :offices,controllers: {
  #   sessions:      'offices_sessions_path',
  #   passwords:     'offices_passwords_path',
  #   registrations: 'offices_registrations_path'
  # }   
  #deviseを使ったuserテーブル機能
  devise_for :users
  # devise_for :users,controllers: {
  #   sessions:      'users_sessions_path',
  #   passwords:     'users_passwords_path',
  #   registrations: 'users_registrations_path'
  # }
  root "informations#index"
  resources :informations #各アクションの定義
end

