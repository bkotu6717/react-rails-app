Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  post '/signup' => 'users#create'
  get '/dashboard' => 'users#dashboard'
  get '/events' => 'events#index'
  root 'events#index'
  post '/search' => 'events#search'
end