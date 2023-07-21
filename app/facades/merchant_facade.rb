class MerchantFacade
  def self.merchants_list
    MerchantService.merchants_list[:data].map do |merchant|
      Merchant.new(merchant)
    end
  end

  def self.merchant_items(merchant_id)
    merchant_data = MerchantService.merchant_items(merchant_id)
    merchant_data[:data].map { |merchant| Merchant.new(merchant) }
  end
end