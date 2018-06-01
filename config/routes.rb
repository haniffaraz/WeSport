Rails.application.routes.draw do

  get '/signup', to: 'users#new', as: '/signup'
  post '/signup', to: 'users#create', as: '/signed_up'

  get '/login', to: 'sessions#new', as: '/login'
  post '/login', to: 'sessions#create', as: '/logged_in'

  delete '/logout', to: 'sessions#destroy', as: '/logout'

  post "/meetup/:id", to: 'meetups#show'

  resources :meetups do
    resources :comments
  end

  delete '/meetups/:id', to: 'meetups#destroy'

  # root to: "meetups#index", as: "home"

  get '/home', to: 'meetups#index'

  post '/user_meetups/:id', to: 'user_meetups#destroy'

  resources :user_meetups
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
