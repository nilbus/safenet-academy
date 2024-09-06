Rails.application.routes.draw do
  resources :signups, only: %w[index]
  resources :credentials, only: %w[create index] do
    delete :delete_all, on: :collection
  end
  root "signup#index"
end
