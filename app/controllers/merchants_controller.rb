class MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.merchants_list
  end
  
  def show
    @merchants = MerchantFacade.merchant_items(params[:id])
    @items = MerchantService.merchant_items(params[:id])
  end
end