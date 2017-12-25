Rails.application.routes.draw do
  get 'service/index'

  resources :books
  resources :shops
  resources :publishers
  resources :webservices
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
