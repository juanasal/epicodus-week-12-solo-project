require 'rails_helper'

describe "get all quotes route", :type => :request do
  let!(:quote) {
    @show = Show.new(:name => "Buffy")
    quote1 = Quote.new(:quotation => "This is a quote", :show_id => @show.id)
    quote2 = Quote.new(:quotation => "This isn't a quote", :show_id => @show.id)
    @show.save
    quote1.save
    quote2.save
  }

  before { get "/shows/#{@show.id}/quotes" }
  # how can I update the show id update dynamically

  it 'returns all quotes' do
    expect(JSON.parse(response.body).size).to eq(2)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end

end
