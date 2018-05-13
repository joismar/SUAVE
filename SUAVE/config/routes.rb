Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  get 'home/index'
  post 'home/index'
  root 'home#index'
  get "sobre", to: "sobre#sobre"

  devise_for :users
end
