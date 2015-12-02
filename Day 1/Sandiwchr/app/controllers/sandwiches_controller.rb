class SandwichesController < ApplicationController
  def index
    sandwiches = Sandwich.all()
    render({json: sandwiches})
  end

  def create
    sandwich = Sandwich.create(entry_params)
    render({status: 201, json: sandwich})
  end

  def show
    sandwich = Sandwich.find(params[:id])
    if sandwich
      render({status: 200, json: sandwich})
    else
      render({status: 404, json: 'Sandwich not found'})
    end
  end

  def update
    sandwich = Sandwich.find(params[:id])
    if sandwich
      sandwich.update(entry_params)
      render({json: sandwich})
    else
      render({status: 404, json: 'Sandwich not found'})
    end
  end

  def destroy
    sandwich = Sandwich.find(params[:id])
    if sandwich
      sandwich.destroy
      render({status: 204})
    else
      render({status: 404, json: 'Sandwich not found'})
    end
  end

  private
  def entry_params
    params.require(:sandwich).permit(:name, :bread_type)
  end
end
