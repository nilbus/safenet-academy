Rails.application.routes.draw do
  resources :signups, only: %w[index]
  resources :credentials, only: %w[create]
  root "signup#index"
end
