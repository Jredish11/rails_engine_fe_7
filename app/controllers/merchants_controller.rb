class MerchantsController < ApplicationController
  def index
    @facade = MerchantFacade.new
    # conn = Faraday.new(url: "http://localhost:3000") do |faraday|
    #   faraday.headers["API_KEY"] = ENV["API_KEY"]
    # end

    # response = conn.get("/api/v1/merchants")

    # json = JSON.parse(response.body, symbolize_names: true)

    # @merchants = json[:data].map do |merchant_data|
    #   Merchant.new(merchant_data)
    # end
  end
end