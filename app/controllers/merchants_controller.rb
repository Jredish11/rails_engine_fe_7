class MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.merchants_list
  end
  
  def show

  end
end