class ShowsController < ApplicationController

  def index
    @shows = Show.all
    json_response(@shows)
  end

  def show
    @show = Show.find(params[:id])
    json_response(@show)
  end

  def create
    @show = Show.create(show_params)
    json_response(@show)
  end

  def update
    @show = Show.find(params[:id])
    @show.update(show_params)
  end

  def destroy
    @show = Show.find(params[:id])
    @show.destroy
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def show_params
    params.permit(:name)
  end
end
