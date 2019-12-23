Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "informations#index"
  resources :informations, only: [:index, :new]
end
