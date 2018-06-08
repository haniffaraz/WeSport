Rails.application.routes.draw do


  get '/login', to: 'sessions#new', as: '/login'
  post '/login', to: 'sessions#create', as: '/logged_in'

  get '/signup', to: 'users#new', as: '/signup'
  post '/signup', to: 'users#create', as: '/signed_up'

  delete '/logout', to: 'sessions#destroy', as: '/logout'

  post "/meetup/:id", to: 'meetups#show'

  resources :sessions

  resources :meetups do
    resources :comments
  end

  delete '/meetups/:id', to: 'meetups#destroy'

  # root to: "meetups#index", as: "home"

  get '/home', to: 'meetups#index'

  post '/user_meetups/:id', to: 'user_meetups#destroy'

  resources :users
  resources :user_meetups
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
