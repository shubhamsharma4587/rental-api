Rails.application.routes.draw do
  root 'home#index'
  resources :transations
  resources :customers
  resources :products
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end