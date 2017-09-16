class HomeController < ApplicationController
  def index
    response = HTTParty.get('https://api.coinmarketcap.com/v1/ticker/?limit=50')
    @json = JSON.parse(response.body)
  end
end
