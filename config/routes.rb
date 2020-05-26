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

      resources :orders, only: [:index, :create]
      post '/new_order', to: 'orders#create'

      resources :products
      resources :line_items, only: [:index, :create, :destroy]


    end
  end
end