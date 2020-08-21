Rails.application.routes.draw do
  root 'home#index'

  namespace :api do
    namespace :v1 do
      get '/login', to: 'auth#login'
      get '/get_user', to: 'auth#get_user'
      resources :transations
      resources :customers
      resources :products
      resources :users
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
