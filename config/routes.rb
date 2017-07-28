Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books
  root "books#index"
  resources :users, except: [:index, :destroy]
  get "/sessions" => "sessions#destroy"
  resources :sessions, only: [:new, :create, :destroy]
end
