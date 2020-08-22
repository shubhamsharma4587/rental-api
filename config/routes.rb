Rails.application.routes.draw do
  root 'home#index'

  namespace :api do
    namespace :v1 do
      post '/login', to: 'auth#login'
      post '/get_user', to: 'auth#get_user'
      post '/initiate', to: 'init#initiate'
      resources :transations
      resources :customers
      resources :products
      resources :users
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
