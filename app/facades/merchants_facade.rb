class MerchantsFacade
  def self.all_merchants
    merchants = MerchantsService.merchants_data
    merchants[:data].map do |merchant|
      Merchant.new(merchant)
    end
  end

  def self.one_merchant(merchant_id)
    merchant = MerchantsService.merchant_data(merchant_id)
    Merchant.new(merchant[:data])
  end

  def self.merchant_items(merchant_id)
    merchant_items = MerchantsService.merchant_items_data(merchant_id)
    merchant_items[:data].map do |item|
      Item.new(item)
    end
  end
end