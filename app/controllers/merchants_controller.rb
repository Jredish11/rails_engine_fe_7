class MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.merchants_list
  end
  
  def show
    @merchants = MerchantFacade.merchant_items(params[:id])
    @items = MerchantFacade.merchant_items(params[:id])
  end
end