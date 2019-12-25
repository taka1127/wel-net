Rails.application.routes.draw do
  devise_for :users     #deviseを使ったユーザー機能
  root "informations#index"
  resources :informations #各アクションの定義
end
