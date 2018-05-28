Rails.application.routes.draw do
  resources :reviews
  get 'home/index'
  post 'home/index'
  root 'home#index'
  post 'escola/escola'
  get '/escola/:id' => "escola#show"
  get "sobre", to: "sobre#sobre"
  get "escola", to: "escola#escola"
  devise_for :users, :controllers => { omniauth_callbacks: "users/omniauth_callbacks", registrations: 'users/registrations' }

  #contatos
  get "contacts", to: "contacts#new"
  resources "contacts", only: [:new, :create]
end