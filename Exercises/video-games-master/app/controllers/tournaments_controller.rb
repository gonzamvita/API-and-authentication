class TournamentsController < ApplicationController
  def index
    render(:index)
  end

  def json_tournaments
    tournaments = Tournament.all()
    render({json: tournaments})
  end

  def json_create_tournament
    tournament = Tournament.new(entry_params)
    tournament.save
  end

  private
  def entry_params
    params.require(:tournament).permit(:name)
  end
end
