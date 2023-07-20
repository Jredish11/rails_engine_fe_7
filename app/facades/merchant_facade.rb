class MerchantFacade
  def self.merchants_list
    MerchantService.merchants_list[:data].map do |merchant|
      Merchant.new(merchant)
    end
  end
end