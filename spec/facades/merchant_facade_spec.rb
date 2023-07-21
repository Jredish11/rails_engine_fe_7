require "rails_helper"

RSpec.describe MerchantFacade do
  describe "class methods" do
    describe "#merchants_list" do
      it "returns the merchants data" do
        merchants = MerchantFacade.merchants_list

        expect(merchants).to be_an(Array)
        expect(merchants.count).to eq(100)

        expect(merchants.first).to be_a(Merchant)
        expect(merchants.first.id).to be_a(String)
        expect(merchants.first.type).to be_a(String)
        expect(merchants.first.name).to be_a(String)
      end
    end

    describe "#merchant_items(id)" do
      it "returns all the items the merchant sells" do
        attrs = {
          id: "1",
          type: "merchant",
          attributes: {
            name: "Schroeder-Jerde"
          }
        }
        
        merchant = Merchant.new(attrs)
        id = merchant.id
        items = MerchantFacade.merchant_items(id)

        expect(items.first.id).to be_a(String)
        expect(items.first.name).to be_a(String)
        expect(items.first.type).to be_a(String)
        expect(items.first.name).to eq("Item Nemo Facere")
      end
    end
  end
end