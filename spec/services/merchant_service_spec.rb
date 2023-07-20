require 'rails_helper'

describe MerchantService do
  describe 'class methods' do
    describe '#merchants_list' do
      it 'returns the merchants data' do
        merchants = MerchantService.merchants_list
        merchants[:data].each do |merchant|
        
        expect(merchants[:data]).to be_an(Array)
        expect(merchants[:data].count).to eq(100)
        expect(merchant).to be_an(Hash)
        

        expect(merchant).to have_key(:id)
        expect(merchant[:id]).to be_a(String)
        
        expect(merchant).to have_key(:type)
        expect(merchant[:type]).to be_a(String)
        
        expect(merchant).to have_key(:attributes)
        expect(merchant[:attributes]).to be_a(Hash)

        expect(merchant[:attributes]).to have_key(:name)
        expect(merchant[:attributes][:name]).to be_a(String)
        end
      end
    end
  end
end