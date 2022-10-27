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
    response = conn.get("api/v1/merchants/")
    parse(response.body)
  end

  def self.merchant_data(merchant_id)
    response = conn.get("api/v1/merchants/#{merchant_id}")
    parse(response.body)
  end

  def self.merchant_items_data(merchant_id)
    response = conn.get("api/v1/merchants/#{merchant_id}/items")
    parse(response.body)
  end
end 