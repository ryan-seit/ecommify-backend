Rails.application.routes.draw do

  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/logged_in', to: 'session#is_logged_in?'

  resources :orders
  resources :products
  resources :users, only: [:create, :show, :index]

end
