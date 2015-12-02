class TournamentsController < ApplicationController
  def index
    render(:index)
  end

  def index
    tournaments = Tournament.all()

    respond_to do |format|
          format.html
          format.json { render json: tournaments }
    end
  end

  def create
    tournament = Tournament.create(entry_params)
    if tournament
      render({status: 201, json: tournament})
    else
      render({status: 400})
    end
  end

  def destroy
    tournament = Tournament.find(params[:id])
    if tournament.destroy()
      render({status: 204, json: tournament})
    else
      render({status: 400})
    end
  end

  private
  def entry_params
    params.require(:tournament).permit(:name)
  end
end
