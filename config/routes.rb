Rails.application.routes.draw do
  resources :reviews
  resources :bottles
  devise_for :users, controllers:  {omniauth_callbacks: 'omniauth', registrations: 'registrations' }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "application#welcome"
end
