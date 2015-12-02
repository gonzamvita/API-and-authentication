Rails.application.routes.draw do
  get '/' => 'tournaments#index'

  get 'api/tournaments' => 'tournaments#json_tournaments'

  post 'api/tournament' => 'tournaments#json_create_tournament'
end
