require 'sidekiq/web'

Rails.application.routes.draw do
  root "home#show"

  get "/sent", to: "mailers#sent"
  resources :mailers, only: [:create]

  mount Sidekiq::Web => '/sidekiq'
end
