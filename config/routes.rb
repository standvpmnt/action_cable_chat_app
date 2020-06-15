Rails.application.routes.draw do
  root 'messages#index'
  resources :users
  resources :messages
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  mount ActionCable.server, at: '/cable'
  # config.action_cable.allowed_request_origins = [
  #   'https://rails-tutorial-mhartl.c9users.io' ]
end
