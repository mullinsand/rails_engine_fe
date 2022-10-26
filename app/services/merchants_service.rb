require 'faraday'
require 'json'

class MerchantsService

  def self.parse(response)
    JSON.parse(response, symbolize_names: true)
  end

  def self.conn
    Faraday.new(url: 'http://localhost:3000/') do |faraday|
      # faraday.params["api_key"] = ENV["tmdb_api_key"]
    end
  end

  def self.merchants_data
    response = conn.get('api/v1/merchants')
    parse(response.body)
  end

  # def self.get_rated_movies_asc(page_number)
  #   response = conn.get("/3/movie/top_rated?language=en-US&page=#{page_number}")
  #   parse(response.body)
  # end

  # def self.search(search_params, page)
  #   response = conn.get("/3/search/movie?query=#{search_params}&page=#{page}")
  #   parse(response.body)
  # end
end 