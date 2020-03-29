Rails.application.routes.draw do
  root to: "static_pages#index"
  get "/venue_specifications", to: "static_pages#venue_specifications"
  get "/photographer_specifications", to: "static_pages#photographer_specifications"
  get "/florist_specifications", to: "static_pages#florist_specifications"
  resources :businesses
  resources :reviews
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
