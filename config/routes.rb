Snackoverflow::Application.routes.draw do
  resources :questions
  resources :users

  get '/signup', to: 'users#new'
  root to: 'questions#index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # get 'log in', to: 'sessions#new', as: 'login'

  resources :users, only: [:show,:create, :delete]

  # get 'auth/facebook/callback', to: 'sessions#create'
  # get 'auth/failure', to: redirect('/')
  # get 'signout', to: 'sessions#destroy', as: 'signout'


end
