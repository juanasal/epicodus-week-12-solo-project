class ShowsController < ApplicationController

  def index
    @shows = Show.all
    json_response(@shows)
  end

  def search
    query = params[:query]
    @show = Show.find_by(name: query)
    json_response(@show)
  end

  def show
    @show = Show.find(params[:id])
    json_response(@show)
  end

  def create
    @show = Show.create(show_params)
    json_response(@show, :created)
  end

  def update
    @show = Show.find(params[:id])
    if @show.update!(show_params)
      render status: 200, json: { message: "Successfully updated."}
    end
  end

  def destroy
    @show = Show.find(params[:id])
    if @show.destroy!
      render status: 200, json: { message: "Successfully deleted."}
    end
  end

  private
  def show_params
    params.permit(:name)
  end
end
