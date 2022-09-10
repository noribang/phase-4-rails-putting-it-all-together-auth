Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :recipes, only: [:index, :create]

  # Sign-up feature
  post "/signup", to: "users#create"
  # Auto-Login feature
  get "/me", to: "users#show"
  # Login after sign-up
  post "/login", to: "sessions#create"

end
