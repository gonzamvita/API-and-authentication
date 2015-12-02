class PlayersController < ApplicationController
  def index
    players = Player.all()
    respond_to do |format|
          format.html
          format.json { render json: players }
    end
  end

  def json_register_player
    puts  params
    player = Player.find(params[:player_id])
    tournament = Tournament.find(params[:tournament_id])
    tournament.players.push(player)
  end
end
