class MerchantsController < ApplicationController
  def index
    @merchants = MerchantsFacade.find_all_merchants
  end

  def show
    @merchant = MerchantsFacade.find_one_merchant(params[:id])
  end
end