Rails.application.routes.draw do
  devise_for :users
  resources :books

  root 'books#index'
  get 'users/payed', to: "users#pay", as: "payed" 
  patch 'users/payed', to: "users#remove", as: "remove"
  post 'books/:id', to: "books#status", as: "status"
  get 'users/:id', to: "users#profile", as: "profile" 
  put 'users/:id', to: "users#reserve", as: "reserve"
  get 'buys/:id', to: "buys#pay", as: "pay"
  post 'buys/:id', to: "buys#buy", as: "buy"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
