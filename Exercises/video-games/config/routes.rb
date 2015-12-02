Rails.application.routes.draw do
  get '/' => 'tournaments#index'

  resources :tournaments, except: [:new, :edit, :show, :update], path: '/api/tournaments' do
    post :add_player, on: :member
  end
  resources :players, except: [:new, :edit, :show, :update], path: '/api/players'
end
