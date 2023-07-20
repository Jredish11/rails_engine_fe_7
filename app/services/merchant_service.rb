class MerchantService
  def self.merchants_list
    get_url("/api/v1/merchants")
  end

  def self.merchant_items(merchant_id)
    get_url("/api/v1/merchants/#{merchant_id}/items")
  end

  
  def self.get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end


  def self.conn
    Faraday.new(url: "http://localhost:3000") do |faraday|
      faraday.headers["API_KEY"] = ENV["API_KEY"]
    end
  end
end