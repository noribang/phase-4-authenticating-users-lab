Rails.application.routes.draw do
  resources :articles, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  ## Authentication
  # Login
  post '/login', to: 'sessions#create'
  # Log out
  delete '/logout', to: 'sessions#destroy'
  # Stay logged in
  get '/me', to: 'users#show'

end
