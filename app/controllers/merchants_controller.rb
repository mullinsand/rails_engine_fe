class MerchantsController < ApplicationController
  def index
    @merchants = MerchantsFacade.all_merchants
  end

  def show
    @merchant = MerchantsFacade.one_merchant(params[:id])
    @merchant_items = MerchantsFacade.merchant_items(params[:id])
  end
end