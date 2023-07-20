require 'rails_helper'

RSpec.describe MerchantFacade do
  describe 'class methods' do
    describe '#merchants_list' do
      it 'returns the merchants data' do
        merchants = MerchantFacade.merchants_list

        expect(merchants).to be_an(Array)
        expect(merchants.count).to eq(100)

        expect(merchants.first).to be_a(Merchant)
        expect(merchants.first.id).to be_a(String)
        expect(merchants.first.type).to be_a(String)
        expect(merchants.first.name).to be_a(String)
      end
    end
  end
end