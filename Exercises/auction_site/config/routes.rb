Rails.application.routes.draw do
  root "site#home"

  get '/login' => "sessions#new" # login form
  post '/login' => "sessions#create" # log in
  delete '/logout' => "sessions#destroy" # log out

  resources :users, only: [:show, :new, :index, :create, :destroy] do
    resources :products, only: [:index, :show, :new, :create, :destroy] do
      resources :bids, only: [:create]
      resources :reviews, only:[:create]
    end
  end
end
