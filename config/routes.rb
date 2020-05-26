Rails.application.routes.draw do
  resources :line_items
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create]
      # post '/signup', to: 'users#create'
      post '/login', to: 'auth#login'
      get '/auto_login', to: 'auth#auto_login'
      post '/user_is_authed', to: 'auth#user_is_authed'

      resources :orders
      resources :products
      resources :line_items

    end
  end
end