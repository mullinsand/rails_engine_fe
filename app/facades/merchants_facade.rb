class MerchantsFacade
  def self.find_all_merchants
    merchants = MerchantsService.merchants_data
    merchants[:data].map do |merchant|
      Merchant.new(merchant)
    end
  end
end