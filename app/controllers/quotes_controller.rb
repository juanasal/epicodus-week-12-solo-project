class QuotesController < ApplicationController

  def index
    @show = Show.find(params[:show_id])
    @quotes = Quote.all
    json_response(@quotes)
  end

  def show
    @show = Show.find(params[:show_id])
    @quote = Quote.find(params[:id])
    json_response(@quote)
  end

  def create
    @show = Show.find(params[:show_id])
    @quote = Quote.create!(quote_params)
    json_response(@quote, :created)
  end

  def update
    @show = Show.find(params[:show_id])
    @quote = Quote.find(params[:id])
    if @quote.update!(quote_params)
      render status: 200, json: { message: "Successfully updated."}
    end
  end

  def destroy
    @show = Show.find(params[:show_id])
    @quote = Quote.find(params[:id])
    if @quote.destroy!
      render status: 200, json: { message: "Successfully deleted."}
    end
  end

  private
  def quote_params
    params.permit(:quotation, :show_id)
  end
end
