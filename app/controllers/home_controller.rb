class HomeController < ApplicationController
  require 'will_paginate/array'
  def index
    response = HTTParty.get('https://api.coinmarketcap.com/v1/ticker/')
    data = JSON.parse(response.body)
    @json = data.paginate(page: params[:page], per_page: 10)
  end
end
