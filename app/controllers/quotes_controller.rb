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
    @quote = Quote.create(quote_params)
    json_response(@quote)
  end

  def update
    @show = Show.find(params[:show_id])
    @quote = Quote.find(params[:id])
    @quote.update(quote_params)
  end

  def destroy
    @show = Show.find(params[:show_id])
    @quote = Quote.find(params[:id])
    @quote.destroy
  end

  private
  def quote_params
    params.permit(:quotation, :show_id)
  end
end
