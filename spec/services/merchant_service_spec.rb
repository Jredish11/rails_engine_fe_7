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

    describe "#items_list(merchant_id)" do
      it "returns the list of all items a merchant sells" do
        attrs = {
          id: "1",
          type: "merchant",
          attributes: {
            name: "Schroeder-Jerde"
          }
        }
    
        merchant = Merchant.new(attrs)
        id = merchant.id
        response = MerchantService.merchant_items(id)

        response[:data].map do |item|

          expect(response[:data]).to be_a(Array)
          expect(item).to be_a(Hash)

          expect(item).to have_key(:id)
          expect(item[:id]).to be_a(String)
          
          expect(item).to have_key(:type)
          expect(item[:type]).to be_a(String)
          
          expect(item).to have_key(:attributes)
          expect(item[:attributes]).to be_a(Hash)

          expect(item[:attributes]).to have_key(:name)
          expect(item[:attributes][:name]).to be_a(String)
          
          
          expect(item[:attributes]).to have_key(:description)
          expect(item[:attributes][:description]).to be_a(String)
          
          expect(item[:attributes]).to have_key(:unit_price)
          expect(item[:attributes][:unit_price]).to be_a(Float)
          
          expect(item[:attributes]).to have_key(:merchant_id)
          expect(item[:attributes][:merchant_id]).to be_a(Integer)
        end
      end
    end
  end
end