class MerchantFacade
  def self.merchants_list
    MerchantService.merchants_list[:data].map do |merchant|
      Merchant.new(merchant)
    end
  end

  def self.find_merchant(merchant_id)
    merchant_data = MerchantService.merchant_items.find do |merchant|
      merchant[:id] == merchant_id
      Merchant.new(merchant_data) if merchant_data
    end
  end
end