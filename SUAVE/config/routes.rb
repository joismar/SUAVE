Rails.application.routes.draw do
  get 'home/index'
  post 'home/index'
  root 'home#index'
  get "sobre", to: "sobre#sobre"

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
end
