require 'open-uri'
class SearchController < ApplicationController

    def index
    query = params.fetch(:query, 'rings')
    url = "https://openapi.etsy.com/v2/listings/active?api_key=a9yk9p0ojvbz4jyop6waooj0&keywords=#{query}"
    response = JSON.parse(open(url).read)
    @items = response["results"]
  end

end
