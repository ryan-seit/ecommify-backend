Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      post '/signup', to: 'users#create'
      # post '/login', to: 'users#login'
      # post '/logout', to: 'users#logout'
      # get '/autologin', to: 'users#autologin'
      resources :users
      resources :orders
      resources :products
    end
  end
end