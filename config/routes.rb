Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
      resources :orders
      resources :products
      resources :users, only: [:index, :create]

      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'

end
