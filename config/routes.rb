Rails.application.routes.draw do
  resources :line_items
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create]
      post '/signup', to: 'users#create'
      post '/login', to: 'auth#login'
      get '/autologin', to: 'auth#autologin'
      post '/logout', to: 'auth#logout'

      resources :orders, only: [:index, :create, :show, :update]
      post '/order', to: 'orders#create'
      patch '/order_update', to: 'orders#update'

      resources :products, only: [:index, :show]

      resources :line_items, only: [:index, :create, :destroy]
      get '/cart', to: 'line_items#index'
      # post '/addtocart', to: 'line_items#create'
      delete '/removefromcart', to: 'line_items#destroy'

    end
  end
end